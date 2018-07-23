class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    keys = %i[name job birthday family relation_type]
    devise_parameter_sanitizer.permit(:sign_up, keys: keys)
  end
end
