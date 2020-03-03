class CarsController < ApplicationController
    
    def new
        @car = Car.new
    end

    def show
        @car = Car.find(params[:id])
    end

    def create
        @user = current_user
        # @car = Car.create(car_params)
        @car = @user.cars.create(car_params)
        redirect_to user_path(@user)
    end

    private
    def car_params
        params.require(:car).permit(:user_id, :make, :model, :color)
    end
end
