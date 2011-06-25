module MicropostsHelper
  def gravatar_for_micropost(micropost, options = { :size => 50 })
    gravatar_image_tag(micropost.email.downcase, :alt => micropost.name,
                                                 :class => "gravatar",
                                                 :gravatar => options) 
  end
end