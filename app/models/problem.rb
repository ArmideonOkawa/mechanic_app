class Problem < ApplicationRecord
  belongs_to :car
  has_many :appointments
  has_many :mechanics, through: :appointments
end
