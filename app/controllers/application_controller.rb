class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_user
    if session[:user_id]
      @current_user = User.find_by(id: session[:user_id])
    end
  end
  helper_method :current_user

  def authenticate
    if not current_user
      flash[:alert] = I18n.t 'permission.need_login'
      redirect_to '/home/index'
    end
  end

  def new_session_path(scope)
    new_user_session_path
  end
end
