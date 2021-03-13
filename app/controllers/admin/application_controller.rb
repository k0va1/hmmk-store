module Admin
  class ApplicationController < ::ActionController::Base
    before_action :authenticate_user

    def authenticate_user
      redirect_to login_url, alert: "Not authorized" if current_user.nil?
    end

    def current_user
      @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end
  end
end
