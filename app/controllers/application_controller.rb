class ApplicationController < ActionController::Base
    # before_action :verified_user 
    helper_method :current_user, :logged_in?, :redirect_if_not_logged_in

    private 
    def current_user 
        @current_user ||= User.find_by_id(session[:user_id]) if session[:user_id]
    end

    def logged_in?
        !!current_user
    end

    def redirect_if_not_logged_in 
       redirect_to root_path if !logged_in?
    end

    # def authenticate_owner 
    #     if params[:user_id]
    #         redirect_to photos_path unless current_user == User.find_by(id: params[:user_id])
    #     else
    #         redirect_to photos_path unless current_user == User.find_by(id: params[:id])
    #     end
    # end

    # def set_user 
    #     if params[:user_id]
    #         @user = User.find_by(id: params[:user_id])
    #     else 
    #         @user = User.find_by(id: params[:id])
    #     end
    # end

  
end
