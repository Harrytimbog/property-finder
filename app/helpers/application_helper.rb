module ApplicationHelper
  def profile_picture(account, width = 100 )
    thumb = account.avatar.present? ? account.avatar.key : "placeholder.jpg"
    cl_image_tag thumb, width: width, class: "profile-pic image-circle", alt: "profile-pic"
  end
end
