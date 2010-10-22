require 'spec_helper'

describe PagesController do
integrate_views

  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end
	
	it "should have a title" do
		get 'home'
		response.should have_tag("title", "Sample test app for Rspec | Home")
	end
	
  end

  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end
	
	it "should have a title" do
		get 'contact'
		response.should have_tag("title", "Sample test app for Rspec | Contact")
	end
  end
  
  describe "GET 'about'" do
	it "should be successful" do
		get 'about'
		response.should be_success
	end
	
	it "should have a title" do
		get 'about'
		response.should have_tag("title", "Sample test app for Rspec | About")
	end
  end
  
end
