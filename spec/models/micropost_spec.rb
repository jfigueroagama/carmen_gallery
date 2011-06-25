require 'spec_helper'

describe Micropost do
  before(:each) do
    @artwork = Factory(:artwork)
    @attr = { :name => "Josue Figueroa",
              :email => "jfigueroa@example.com",
              :content => "Good post" }
  end
  
  it "should create a new instance given valid attributes" do
    @artwork.microposts.create!(@attr)
  end
  
  describe "artwork associations" do
    
    before(:each) do
      @micropost = @artwork.microposts.create(@attr)
    end
    
    it "should have an artwork attribute" do
      @micropost.should respond_to(:artwork)
    end
    
    it "should have the right assocciated artwork" do
      @micropost.artwork_id.should == @artwork.id
      @micropost.artwork.should == @artwork
    end
  end
  
  describe "micropost validations" do 
   
   it "should require an artwork id" do
     Micropost.new(@attr).should_not be_valid
   end
    
   it "should require a non blank content" do
     @artwork.microposts.build(:content => " ").should_not be_valid
   end
    
   it "should reject long content" do
     @artwork.microposts.build(:content => "a" * 141).should_not be_valid
   end
    
   it "should require a non blank name" do
     @artwork.microposts.build(:name => " ").should_not be_valid
   end
    
   it "should reject long name" do
     @artwork.microposts.build(:name => "a" * 51).should_not be_valid
   end
    
   it "should require a non blank email" do
     @artwork.microposts.build(:email => " ").should_not be_valid
   end
    
   it "should accept valid email" do
     addresses = %w[visitor@foo.com THE_VISITOR@foo.com.mx first.last@foo.edu]
     addresses.each do |address|
       valid_email_user = @artwork.microposts.build(@attr.merge(:email => address))
       valid_email_user.should be_valid
     end
   end
   
    
   it "should reject invalid email" do
     addresses = %w[visitor@foo,com visitor_at_foo.com example.visitor@foo.]
       addresses.each do |address|
         invalid_email_user = @artwork.microposts.build(@attr.merge(:email => address))
         invalid_email_user.should_not be_valid
     end
   end
 end
  
end # describe Micropost