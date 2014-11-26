class IncidentType < ActiveRecord::Base
  validates :descripiton, presence: true, uniqueness: true
end
