class ApplicationController < ActionController::Base
  helper_method :current_user
  def current_user
    if session[:user_id]
      @current_user ||= User.find(session[:user_id])
    else
      @current_user = nil
    end
  end

  def return_json_if_not_logged_in
    unless @current_user
      render json: "Not Authorized"
    end
  end

end
