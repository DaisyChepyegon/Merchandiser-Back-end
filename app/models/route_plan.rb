class RoutePlan < ApplicationRecord
  belongs_to :merchandiser
  belongs_to :manager
  belongs_to :outlet
end
