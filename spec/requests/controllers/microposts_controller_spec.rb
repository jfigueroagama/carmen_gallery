require 'spec_helper'

describe MicropostsController do
  render_views
  
  describe "GET 'new'" do
    it "should be successful" do
      get :new
      response.should be_success
    end
    it "should have the right title" do
      get :new
      response.should have_selector("title", :content => "New post")
    end
  end
  
  describe "POST 'create'" do
    
    before(:each) do
      @artwork = Factory(:artwork)
    end
    
    describe "failure" do
      
      before(:each) do
        @attr = {:name => "",
                 :email => "",
                 :content => "",
                 :artwork_id => @artwork.id }
      end
      
      it "should not create a micropost" do
        lambda do
          post :create, :micropost => @attr
        end.should_not change(Micropost, :count)
      end
      
      it "should have the right title" do
        post :create, :micropost => @attr
        response.should have_selector("title", :content => "New post")
      end
      
      it "should redirect to micropost 'new' page" do
        post :create, :micropost => @attr
        response.should render_template('microposts/new')
      end
    end # describe "failure"

    
    describe "success" do
      
      before(:each) do
        @attr = {:name => "Josue Figueroa",
                 :email => "jfigueroa@example.com",
                 :content => "Foo bar",
                 :artwork_id => 1 }
      end
      
      it "should create a micropost" do
        lambda do
          post :create, :micropost => @attr
        end.should change(Micropost, :count).by(1)
      end
      
     # it "should redirect to artwork show page" do
     #   post :create, :micropost => @attr
     #   response.should redirect_to(artwork_path(@artwork))
     # end
      
      it "should have a flash message" do
       post :create, :micropost => @attr
        flash[:success].should =~ /post created/i
      end
    end # describe "success"
  end # POST 'create'
  
  describe "DELETE 'destroy'" do
    
    before(:each) do
      @artwork = Factory(:artwork)
    end
    
    describe "for an unauthorized user" do
      
      before(:each) do
        @user = nil
        @micropost = Factory(:micropost)
      end
      
      it "should deny access" do
        delete :destroy, :id => @micropost
        response.should redirect_to(root_path)
      end
      
    end
    
    describe "for an authorized user" do
      
      before(:each) do
        @user = test_sign_in(Factory(:user))
        @micropost = Factory(:micropost)
      end
      
      it "should destroy the micropost" do
        lambda do
          delete :destroy, :id => @micropost
        end.should change(Micropost, :count).by(-1)
      end
      
      #it "should redirect to artwork show page" do
      #  delete :destroy, :id => @micropost
      #  response.should redirect_to(artwork_path(@artwork))
      #end
      
      it "should have a flash message" do
        delete :destroy, :id => @micropost
        flash[:success].should =~ /post deleted/i
      end
      
    end
  end # DELETE 'destroy'
   
end
