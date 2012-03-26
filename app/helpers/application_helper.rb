module ApplicationHelper
  
  def title
    base_title = "Carmen's Gallery"
    if @title.nil?
      base_title
    else
      "#{base_title} #{@title}"
    end
  end
  
  def logo
    image_tag("CarmenHome25.jpg", :alt => "Carmen's Gallery", :class => "round")
  end
  
  def artwork_image(image)
    image_tag(image)
  end
  
end
