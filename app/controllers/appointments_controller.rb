class AppointmentsController < ApplicationController

    def index
        @appointments = Appointment.all
    end

    def show
        
    end

    def new
        @problem_id = params[:id]
        @appointment = Appointment.new
        @mechanics = Mechanic.all.select{|mechanic| mechanic.specialty}
        
    end

    def create 

        @appointment = Appointment.create(appt_params)
        
        redirect_to appointments_index_path
    end


    private
    def appt_params
    params.require(:appointment).permit(:problem_id, :mechanic_id)
    end

end
