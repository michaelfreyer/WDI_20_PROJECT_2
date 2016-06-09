class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception



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


def icon_category(type)

  if type == "work"
    "fa fa-beer"
  elsif type == "life"
    "fa fa-bicycle"
  elsif type == "fun"
    "fa fa-diamond"
  elsif type == "vip"
    "fa fa-gamepad"
  else
    "fa fa-exclamation"
  end   

end


def time_till_task(days)

    if days <= 1
      "today"
    elsif days <= 2
      "one-day"
    elsif days <= 3
      "two-day"
    else
      "chill"
    end   

  end

def overdue_tasks()


  #  @counter = 0

  #  @tasks.each do |task| 

  #    if task.user.nil?

  #    else

  #     if current_user.email == task.user.email

  #       (task.date - Date.today)

  #     end
  
  #    end

  # end

end


















