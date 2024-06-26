class ApplicationController < ActionController::Base
  before_action :authenticate_user!, except: [:top, :about]
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
    user_path(resource)
  end

  def after_sign_out_path_for(resource)
    root_url
  end

  def get_profile_image(width, height)
    if @user.profile_image.attached?
      image_tag @user.profile_image.variant(resize: "#{width}x#{height}>")
    else
      image_tag 'no_image', size: "#{width}x#{height}"
    end
  end

  protected
  
  def logged_in?
    flash[:notice] = "aaaa"
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name,:email])
  end
end
