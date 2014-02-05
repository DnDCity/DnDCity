class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to main_app.root_url, :alert => exception.message
  end

  before_filter :configure_permitted_parameters, if: :devise_controller?

protected
  def configure_permitted_parameters
    warn "ApplicationController::configure_permitted_parameters has been called from :#{self.class.name}"
    devise_parameter_sanitizer.for(:sign_up) << :name
    devise_parameter_sanitizer.for(:account_update) << :name
    warn "account_update: sanitizer #{devise_parameter_sanitizer.for(:account_update)}"
    p = account_update_params
    warn "account_update_params: #{p} is a #{p.class.name}"
    p.delete(:current_password)
    p.delete(:password)
    p.delete(:password_confirmation)
    warn "account_update_params: #{p} is a #{p.class.name}"
    warn "sanitizer is a : #{devise_parameter_sanitizer.class.name}"
  end

end
