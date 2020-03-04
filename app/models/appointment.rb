class Appointment < ApplicationRecord
  belongs_to :problem
  belongs_to :mechanic
end
