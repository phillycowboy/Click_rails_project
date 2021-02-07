class SessionsController < ApplicationController


    def new
        @user = User.new 
    end

    def create
        user = User.find_by(username: params[:user][:username])
        if user && user.authenticate(params[:user][:password])
            session[:user_id] = user.id 
            redirect_to user_path(user)
        else
            flash[:message] = "Incorrect Login Info, please try again."
            redirect_to login_path 
        end
    end

    def destroy 
        session.delete :user_id
        redirect_to root_path 
    end

    def google
        @user = User.find_or_create_by(username: auth["info"]["name"]) do |user|
            user.password = SecureRandom.hex(10)
        end
        if @user && @user.id
            session[:user_id] = @user.id
            redirect_to photos_path
        else 
            redirect_to login_path 
        end
    end 

    private 

    def auth 
        request.env['omniauth.auth']
    end
end