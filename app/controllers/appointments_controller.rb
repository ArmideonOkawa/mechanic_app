class AppointmentsController < ApplicationController

    def index
        @appointments = Appointment.all
    end

    def show
        
    end

    def new
        @problem_id = params[:id]
        @appointment = Appointment.new
        @mechanic_id = Mechanic.all.select{|mechanic| mechanic.specialty == @problem_id }
    end

    def create
        @problem_id = Problem.where(params[:problem])
        @mechanic_id = Mechanic.where(params[:specialty])
        @appointment = Appointment.create!(appt_params)
        redirect_to appointments_path
    end


    private
    def appt_params
    params.require(:appointment).permit(:problem_id, :mechanic_id)
    end

end
