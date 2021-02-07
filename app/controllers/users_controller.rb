class UsersController < ApplicationController
    # before_action :redirect_if_not_logged_in

    def index 
        
    end
    
    def show 
        redirect_if_not_logged_in 
        @user = User.find_by(id: params[:id])
    end
    
    def new 
        @user = User.new
    end

    def create 
        @user = User.new(user_params)
        if @user.save 
            session[:user_id] = @user.id 
            redirect_to user_path(@user)
        else 
            render :new
        end
    end
    

    private 

    def user_params 
        params.require(:user).permit(:username, :password, :first_name, :last_name, :about)
    end
end
