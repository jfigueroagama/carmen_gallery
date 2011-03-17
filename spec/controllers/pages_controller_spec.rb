require 'spec_helper'

describe PagesController do
  render_views

  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end
    it "should have the right title" do
      get 'home'
      response.should have_selector("title", :content => "Home")
    end
  end

  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end
    it "should have the right title" do
      get 'contact'
      response.should have_selector("title", :content => "Contact")
    end
  end
  
  describe "GET 'statement'" do
    it "should be successful" do
      get 'statement'
      response.should be_success
    end
    it "should have the right title" do
      get 'statement'
      response.should have_selector("title", :content => "Statement")
    end
  end

end
