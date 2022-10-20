class Manager < ApplicationRecord
  has_many :merchandisers
  has_many :route_plans, through: :merchandisers
end
