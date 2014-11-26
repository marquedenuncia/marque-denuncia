class Incident < ActiveRecord::Base
  belongs_to :user
  belongs_to :incident_type
  
  validates :description, :view_count, :user, :incident_type, :anonymous, presence: true
  validates :description, length: { maximum: 1000 }
  
end
