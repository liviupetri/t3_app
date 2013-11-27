require 'spec_helper'

describe "StaticPages" do
  
  describe "Home page" do

  	it "should have the title Home" do
  		visit 'static_pages/home'
  		expect(page).to have_title('T3App | Home')
  	end
  	it "should have the content 'T3 App'" do
  		visit '/static_pages/home'
  		expect(page).to have_content('T3 App')
  	end
  end

  describe "Help page" do
  	it "should have the title 'Help'" do
  		visit 'static_pages/help'
  		expect(page).to have_title('T3App | Help')
  	end

  	it "shold have the content 'Help" do
  		visit '/static_pages/help'
  		expect(page).to have_content "Help"
  	end
  end

  describe "About page" do
  	it "should have the title 'About'" do
  		visit 'static_pages/about'
  		expect(page).to have_title('T3App | About')
  	end
  	it "should have the title About us" do
  		visit '/static_pages/about'
  		expect(page).to have_content "About us"
  	end
  end

end
