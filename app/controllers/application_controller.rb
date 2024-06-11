class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
    users_index_path
  end

  def after_sign_out_path_for(resource)
    homes_path_url
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
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name,:email])
  end
end
