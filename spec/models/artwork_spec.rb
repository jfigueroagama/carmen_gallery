require 'spec_helper'

 describe Artwork do
   
   before(:each) do
    @attr = { :name => "Artwork",
              :email => "artwork@carmen-gallery.com",
              :art => "painting" }
   end
  
   it "should create a new instance given valid attributes" do
    Artwork.create!(@attr)
   end
  
   it "should require a name" do
    no_name_artwork = Artwork.new(@attr.merge(:name => ""))
    no_name_artwork.should_not be_valid
   end
  
   it "should require an email" do
    no_email_artwork = Artwork.new(@attr.merge(:email => ""))
    no_email_artwork.should_not be_valid
   end
  
   it "should require an art type" do
    no_artype_artwork = Artwork.new(@attr.merge(:art => ""))
    no_artype_artwork.should_not be_valid
   end
  
   it "should reject names that are too long" do
    long_name = "a" * 51
    long_name_artwork = Artwork.new(@attr.merge(:name => long_name))
    long_name_artwork.should_not be_valid
   end
  
   it "should accept valid email" do
    addresses = %w[artwork@carmen-gallery.com THE_ARTWORK@carmen-gallery.com art.work@carmen-gallery.com]
    addresses.each do |address|
      valid_email_artwork = Artwork.new(@attr.merge(:email => address))
      valid_email_artwork.should be_valid
    end
   end
  
   it "should reject invalid email" do
    addresses = %w[artwork@foo,com art.work_at.com example_user@foo.]
    addresses.each do |address|
      invalid_email_artwork = Artwork.new(@attr.merge(:email => address))
      invalid_email_artwork.should_not be_valid
    end
   end
  
  #describe "micropost association" do
  #  before(:each) do
  #    @artwork = Artwork.create(@attr)
  #    @mp1 = Factory(:micropost, :artwork => @artwork, :created_at => 1.day.ago)
  #    @mp2 = Factory(:micropost, :artwork => @artwork, :created_at => 1.hour.ago)
  #  end
  #  it "should have a microposts attribute" do
  #    @artwork.should respond_to(:microposts)
  #  end
  #  it "should have the right microposts in the right order" do
  #   @artwork.microposts.should == [@mp2, @mp1]
  #  end
  #  it "should destroy associated microposts" do
  #   @artwork.destroy
  #   [@mp1, @mp2].each do |micropost|
  #     Micropost.find_by_id(micropost.id).should be_nil
  #   end
  #  end
  #end # micropost association
  
end
