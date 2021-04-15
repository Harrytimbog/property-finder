module PropertiesHelper


  def property_thumbnail(property)
    img = property.photo.present? ? property.photo.key : "placeholder.jpg"
    cl_image_tag img, class: "property-thumb", height: 170, width: 220, crop: :fill
  end

  def property_photo(property)
    img = property.photo.present? ? property.photo.key : "placeholder.jpg"
    cl_image_tag img, class: "property-photo", height: 300, width: 400, crop: :fill
  end
end
