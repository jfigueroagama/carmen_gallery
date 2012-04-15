require 'spec_helper'

describe PagesController do
  render_views

  describe "GET 'home'" do
    it "should be successful" do
      get :home
      response.should be_success
    end
    it "should have the right title" do
      get :home
      response.should have_selector("title", :content => "Home")
    end
  end

  describe "GET 'paintings'" do
    it "should be successful" do
      get :paintings
      response.should be_success
    end
    it "should have the right title" do
      get :paintings
      response.should have_selector("title", :content => "Paintings")
    end
  end
  
  describe "GET 'drawings'" do
    it "should be successful" do
      get :drawings
      response.should be_success
    end
    it "should have the right title" do
      get :drawings
      response.should have_selector("title", :content => "Drawings")
    end
  end
  
  describe "GET 'prints'" do
    it "should be successful" do
      get :prints
      response.should be_success
    end
    it "should have the right title" do
      get :prints
      response.should have_selector("title", :content => "Prints")
    end
  end
  
  describe "GET 'tshirts'" do
    it "should be successful" do
      get :tshirts
      response.should be_success
    end
    it "should have the right title" do
      get :tshirts
      response.should have_selector("title", :content => "T-Shirts")
    end
  end
  
  describe "GET 'statement'" do
    it "should be successful" do
      get :statement
      response.should be_success
    end
    it "should have the right title" do
      get :statement
      response.should have_selector("title", :content => "Statement")
    end
  end

end
