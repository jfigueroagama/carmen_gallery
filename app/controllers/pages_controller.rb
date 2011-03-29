class PagesController < ApplicationController
  def home
    @title = "Home"
  end

  def paintings
    @title = "Paintings"
  end
  
  def drawings
    @title = "Drawings"
  end

  def prints
    @title = "Prints"
  end

  def tshirts
    @title = "T-Shirts"
  end

  def statement
    @title = "Statement"
  end

end
