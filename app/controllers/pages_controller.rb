class PagesController < ApplicationController
  def home
    @title = "Home"
  end

  def paintings
    @title = "Paintings"
    @artworks = Artwork.where("art = ?", 'painting').order("created_at DESC")
  end
  
  def drawings
    @title = "Drawings"
    @artworks = Artwork.where("art = ?", 'drawing').order("created_at DESC")
  end

  def prints
    @title = "Prints"
    @artworks = Artwork.where("art = ?", 'print').order("created_at DESC")
  end

  def tshirts
    @title = "T-Shirts"
    @artworks = Artwork.where("art = ?", 'tshirt').order("created_at DESC")
  end

  def statement
    @title = "Statement"
  end

end
