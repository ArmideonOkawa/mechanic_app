class SessionsController < ApplicationController
    def new
    end
  
    def create
    
      @user = User.find_by(name: params[:name])
      

      if @user && @user.authenticate(params[:password])
        #byebug
        session[:user_id] = @user.id
        flash[:success] = "Successfully logged in!"
        redirect_to user_path(@user)
      else
        flash[:warning] = "Incorrect email or password"
        redirect_to '/login'
      end
    end
  
    def destroy
      session[:user_id] = nil
      flash[:success] = "Successfully Logged Out"
      redirect_to '/login'
    end
end
