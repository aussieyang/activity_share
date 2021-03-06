class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session
  # skip_before_action :verify_authenticity_token

  def logged_in?
    !!current_user
  end
  helper_method :logged_in?

  def current_user
    User.find_by(id: session[:user_id])
  end
  helper_method :current_user

  def resize_avatar(avatar)
    image = MiniMagick::Image.new(avatar.path)
    image.resize "100x100!"
    return image
  end
  helper_method :resize_avatar

end
