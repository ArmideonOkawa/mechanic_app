class Car < ApplicationRecord
  validates :make, presence: true
  validates :model, presence: true
  validates :color, presence: true
  validates :user_id,presence: true
  belongs_to :user
  has_many :issues
  has_many :problems
  
end
