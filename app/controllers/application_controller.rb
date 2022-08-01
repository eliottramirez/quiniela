class ApplicationController < ActionController::Base
  include Pundit::Authorization

  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_out_path_for(_resource_or_scope)
    new_user_session_path
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) do |user|
      user.permit(:name, :avatar, :email, :email_confirmation, :password, :password_confirmation)
    end

    devise_parameter_sanitizer.permit(:account_update) do |user|
      user.permit(:name, :avatar, :email, :current_password, :password, :password_confirmation)
    end
  end
end
