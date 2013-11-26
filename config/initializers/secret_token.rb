# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
#T3App::Application.config.secret_key_base = '6598ec8f0a6e7c371c52872aa36e08e684dce06e5487d04bcfa5762fa27a1f04b6a0b10cf7497220f8d0ef2a424b7761c85ef596988e9e4505541e3fa55d2c2d'



require 'securerandom'

def secure_token
  token_file = Rails.root.join('.secret')
  if File.exist?(token_file)
    # Use the existing token.
    File.read(token_file).chomp
  else
    # Generate a new token and store it in token_file.
    token = SecureRandom.hex(64)
    File.write(token_file, token)
    token
  end
end

T3App::Application.config.secret_key_base = secure_token
