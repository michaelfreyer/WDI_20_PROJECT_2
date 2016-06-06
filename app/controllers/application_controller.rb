class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  def icon_category(type)

    

  end


  before_action :configure_permitted_parameters, if: :devise_controller?

    def configure_permitted_parameters      
      devise_parameter_sanitizer.permit(:sign_up, keys: [:mobile, :email, :password, :password_confirmation])

      devise_parameter_sanitizer.permit(:account_update, keys: [:mobile, :email, :password, :password_confirmation])
    end  


    protected
    def after_sign_in_path_for(resource)
      tasks_path
    end



end
