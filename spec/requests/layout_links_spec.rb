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
  
  it "should have a T-Shirts page at '/tshirts'" do
    get '/tshirts'
    response.should have_selector('title', :content => "T-Shirts")
  end
  
  it "should have a Statement page at '/statement'" do
    get '/statement'
    response.should have_selector('title', :content => "Statement")
  end
  
  it "should have a Sign up page at '/signup'" do
    get '/signup'
    response.should have_selector('title', :content => "Sign up")
  end
  
end
