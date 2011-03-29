require "spec_helper"

describe ArtworksController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/artworks" }.should route_to(:controller => "artworks", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/artworks/new" }.should route_to(:controller => "artworks", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/artworks/1" }.should route_to(:controller => "artworks", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/artworks/1/edit" }.should route_to(:controller => "artworks", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/artworks" }.should route_to(:controller => "artworks", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/artworks/1" }.should route_to(:controller => "artworks", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/artworks/1" }.should route_to(:controller => "artworks", :action => "destroy", :id => "1")
    end

  end
end
