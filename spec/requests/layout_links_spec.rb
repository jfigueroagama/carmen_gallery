require 'spec_helper'

describe "LayoutLinks" do
  
  it "should have a Home page at '/'" do
    get '/'
    response.should have_selector('title', :content => "Home")
  end
  
  it "should have a Paintings page at '/paintings'" do
    get '/paintings'
    response.should have_selector('title', :content => "Paintings")
  end
  
  it "should have a Drawings page at '/drawings'" do
    get '/drawings'
    response.should have_selector('title', :content => "Drawings")
  end
  
  it "should have a Prints page at '/prints'" do
    get '/prints'
    response.should have_selector('title', :content => "Prints")
  end
  
  it "should have a Objects page at '/objects'" do
    get '/objects'
    response.should have_selector('title', :content => "Objects")
  end
  
  it "should have a Statement page at '/statement'" do
    get '/statement'
    response.should have_selector('title', :content => "Statement")
  end
  
  it "should have a Sign up page at '/signup'" do
    get '/signup'
    response.should have_selector('title', :content => "Sign up")
  end
  
  describe "when not signed in" do
    it "should have a signin link" do
      visit root_path
      response.should have_selector("a", :href => signin_path, :content => "Sign in")
    end
  end
  
  describe "when signed in" do
    before(:each) do
      @user = Factory(:user)
      visit signin_path
      fill_in :email, :with => @user.email
      fill_in :password, :with => @user.password
      click_button
    end
    it "should have signout link" do
      visit root_path
      response.should have_selector("a", :href => signout_path, :content => "Sign out")
    end
    it "should have a profile link" do
      visit root_path
      response.should have_selector("a", :href => user_path(@user), :content => "Profile")
    end
    
  end
  
end
