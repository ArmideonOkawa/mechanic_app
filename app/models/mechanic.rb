class Mechanic < ApplicationRecord
    has_many :appointments
    has_many :problems, through: :appointmentss


end
