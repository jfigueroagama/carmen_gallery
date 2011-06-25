class ArtworksController < ApplicationController
  downloads_files_for :artwork, :avatar
  
  # GET /artworks
  # GET /artworks.xml
  def index
    @artworks = Artwork.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @artworks }
    end
  end

  # GET /artworks/1
  # GET /artworks/1.xml
  def show
    @artwork = Artwork.find(params[:id])
    $current_artwork = @artwork
    @microposts = @artwork.microposts.paginate(:page => params[:page])
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @artwork }
    end
  end

  # GET /artworks/new
  # GET /artworks/new.xml
  def new
    @artwork = Artwork.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @artwork }
    end
  end

  # GET /artworks/1/edit
  def edit
    @artwork = Artwork.find(params[:id])
  end

  # POST /artworks
  # POST /artworks.xml
  def create
    @artwork = Artwork.new(params[:artwork])

    respond_to do |format|
      if @artwork.save
        format.html { redirect_to(@artwork, :notice => 'Artwork was successfully created.') }
        format.xml  { render :xml => @artwork, :status => :created, :location => @artwork }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @artwork.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /artworks/1
  # PUT /artworks/1.xml
  def update
    @artwork = Artwork.find(params[:id])

    respond_to do |format|
      if @artwork.update_attributes(params[:artwork])
        format.html { redirect_to(@artwork, :notice => 'Artwork was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @artwork.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /artworks/1
  # DELETE /artworks/1.xml
  def destroy
    @artwork = Artwork.find(params[:id])
    @artwork.destroy

    respond_to do |format|
      format.html { redirect_to(artworks_url) }
      format.xml  { head :ok }
    end
  end
  
  def avatars
    artwork = Artwork.find(params[:id])
    style = params[:style]?params[:style] : 'original'
    #send_file artwork.avatar.path(style), :type => artwork.avatar_content_type
    send_data artwork.avatar.file_contents(style), :type => artwork.avatar_content_type
  end
  
end
