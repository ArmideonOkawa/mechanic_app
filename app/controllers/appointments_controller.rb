class AppointmentsController < ApplicationController

    def index
        @appointments = Appointment.all
    end

    def show
        
    end

    def new
        @problem_id = params[:id]
        @appointment = Appointment.new
        @mechanic_id = Mechanic.all.select{|mechanic| mechanic.specialty}
        byebug
    end

    def create 
        @problem_id = Problem
        # byebug
        @appointment = Appointment.create(appt_params)
        #byebug
        redirect_to appointments_path
    end


    private
    def appt_params
    params.permit(:problem_id, :mechanic_id)
    end

end
