class ApplicationController < ActionController::Base

    def current_user
        @current_user = User.find_by(id: session[:user_id]) if session[:user_id]
      end

      def current_car
        @car = Car.find(params[:id])
        byebug
      end
end
