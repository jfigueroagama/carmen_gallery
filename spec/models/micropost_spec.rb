require 'spec_helper'

describe Micropost do
  before(:each) do
    @artwork = Factory(:artwork)
    @attr = { :name => "My Artwork",
              :email => "artwork@example.com",
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
  end
end
