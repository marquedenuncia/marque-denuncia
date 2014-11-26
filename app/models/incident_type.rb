class IncidentType < ActiveRecord::Base
  validates :description, presence: true, uniqueness: true, length: { maximum: 1000 }
end
