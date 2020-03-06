class CarsController < ApplicationController
    
    
    def index
        @cars = Car.all
    end

    def new
        @problem = Problem.new
        @car = Car.new
    end

    def show
        @car = Car.find(params[:id])
    end

    def create
        @user = current_user
        @car = @user.cars.create(car_params)
        if @car.valid?
            redirect_to user_path(@user)
        else
            flash[:errors] = @car.errors.full_mesasges
            redirect_to new_car_path
        end
    end

    def destroy

        @car = Car.find(params[:id])
        @car.destroy
        redirect_to login_path
    end

    private
    def car_params
        params.require(:car).permit(:user_id, :make, :model, :color)
    end
end
