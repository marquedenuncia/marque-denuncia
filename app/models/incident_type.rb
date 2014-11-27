class IncidentType < ActiveRecord::Base
  validates :description, presence: true, uniqueness: true, length: { maximum: 1000 }

  def self.type_names
    all.map { |type| [type.description, type.id] }
  end
end
