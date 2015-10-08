module ApplicationHelper
  def background_image(image='')
    if image.empty?
      "the-index-page"
    else
      image
    end
  end
end
