class UsersController < ApplicationController

    def index 
        @users = User.all
    end

    def new
        @user = User.new
    end

    def create
     @user = User.new(safe_params)
      if @user.save
        session[:user_id] = @user.id
        redirect_to user_path(@user)
      else
        flash[:errors] = @user.errors.full_messages
        redirect_to new_user_path
      end
    end

    def show
        @user = User.find(params[:id])
    end

    private
    def safe_params
        params.require(:user).permit(:name, :password)
    end
end
