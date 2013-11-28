require 'spec_helper'

describe "StaticPages" do
	let(:base_title) {"T3App"}
  
  describe "Home page" do

  	it "should have the title Home" do
  		visit '/static_pages/home'
  		expect(page).to have_title("#{base_title} | Home")
  	end
  	it "should have the content 'T3App'" do
  		visit '/static_pages/home'
  		expect(page).to have_content('T3App')
  	end
  end

  describe "Help page" do
  	it "should have the title 'Help'" do
  		visit '/static_pages/help'
  		expect(page).to have_title("#{base_title} | Help")
  	end

  	it "shold have the content 'T3App'" do
  		visit '/static_pages/help'
  		expect(page).to have_content "T3App"
  	end
  end

  describe "About page" do
  	it "should have the title 'About'" do
  		visit '/static_pages/about'
  		expect(page).to have_title("#{base_title} | About")
  	end
  	it "should have the content About us" do
  		visit '/static_pages/about'
  		expect(page).to have_content "About us"
  	end
  end

  describe "Contact page" do
  	it "Should have title 'Contact'" do
  		visit '/static_pages/contact'
  		expect(page).to have_title "#{base_title} | Contact"
  	end
  	it "Should have content contact" do
  		visit '/static_pages/contact'
  		expect(page).to have_content "contact"
  	end
  end


end
