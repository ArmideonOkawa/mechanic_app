class Car < ApplicationRecord
  belongs_to :user
  has_many :issues
  has_many :problems
end
