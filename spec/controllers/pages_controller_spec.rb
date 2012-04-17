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
  
  describe "GET 'objects'" do
    it "should be successful" do
      get :objects
      response.should be_success
    end
    it "should have the right title" do
      get :objects
      response.should have_selector("title", :content => "Objects")
<<<<<<< HEAD
=======
    end
  end
  
  describe "GET 'about'" do
    it "should be successful" do
      get :about
      response.should be_success
    end
    it "should have the right title" do
      get :about
      response.should have_selector("title", :content => "Carmen's Gallery")
>>>>>>> stylesheet
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
