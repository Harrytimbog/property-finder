class ApplicationController < ActionController::Base
  before_action :authenticate_account!

  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:avatar, :company, :telephone, :first_name, :last_name, :url])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:avatar, :company, :telephone, :first_name, :last_name, :url])
  end
end
