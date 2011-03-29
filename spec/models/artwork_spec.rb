require 'spec_helper'

 describe Artwork do
 #  before(:each) do
 #  @attr = { :name => "My Artwork",
 #            :email => "myartwork@carmen_gallery.com",
 #            :art => "drawing" }
 #  end
  
 #it "should create a new instance given valid attributes" do
   #Artwork.create!(@attr)
 #end
  
 #it "should require a name" do
   #no_name_artwork = Artwork.new(@attr.merge(:name => ""))
   #no_name_artwork.should_not be_valid
 #end
  
 #it "should require an email" do
    #no_email_artwork = Artwork.new(@attr.merge(:email => ""))
    #no_name_artwork.should_not be_valid
 #end
  
 #it "should require an art type" do
    #no_artype_artwork = Artwork.new(@attr.merge(:art => ""))
    #no_artype_artwork.should_not be_valid
 #end
  
 #it "should reject names that are too long" do
    #long_name = "a" * 51
    #long_name_artwork = Artwork.new(@attr.merge(:name => long_name))
    #long_name_artwork.should_not be_valid
 #end
  
 #it "should accept valid email" do
    #addresses = %w[artwork@carmen-gallery.com THE_ARTWORK@carmen-gallery.com art.work@carmen-gallery.com]
    #addresses.each do |address|
      #valid_email_artwork = Artwork.new(@attr.merge(:email => address))
      #valid_email_artwork.should be_valid
    #end
  #end
  
  #it "should reject invalid email" do
    #addresses = %w[artwork@foo.com artwork@foo,com art.work_at.com example_user@foo.]
    #addresses.each do |address|
      #invalid_email_artwork = Artwork.new(@attr.merge(:email => address))
      #invalid_email_artwork.should_not be_valid
    #end
  #end
  
end
