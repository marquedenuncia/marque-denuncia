class IncidentType < ActiveRecord::Base
  validates :description, presence: true, uniqueness: true
end
