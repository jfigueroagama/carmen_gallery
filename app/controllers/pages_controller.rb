class PagesController < ApplicationController
  def home
    @title = "Home"
  end

  def paintings
    @title = "Paintings"
    @artworks = Artwork.where("art = ?", 'painting')
  end
  
  def drawings
    @title = "Drawings"
    @artworks = Artwork.where("art = ?", 'drawing')
  end

  def prints
    @title = "Prints"
    @artworks = Artwork.where("art = ?", 'print')
  end

  def tshirts
    @title = "T-Shirts"
    @artworks = Artwork.where("art = ?", 'tshirt')
  end

  def statement
    @title = "Statement"
  end

end
