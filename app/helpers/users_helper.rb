module UsersHelper
  def avatar_url(user)
    user.facebook_picture_url || "http://placehold.it/30x30"
  end
end
