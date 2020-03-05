class ProblemsController < ApplicationController

    def new
        @problem = Problem.new
        @car_id = params[:id]
    end

    def show
        @problem = Problem.find(params[:id])
    end

    def create
        @car = Car.find(params[:car_id])
        @problem = @car.problems.create(pro_params)
        redirect_to car_path(@car)
    end

    private

    def pro_params
        params.require(:problem).permit(:car_id,:problem)
    end
end
