class Incident < ActiveRecord::Base
  belongs_to :user
  belongs_to :incident_type
  belongs_to :establishment
  
  validates :description, :user, :incident_type, :establishment, presence: true
  validates :description, length: { maximum: 1000 }

  has_many :comments
  has_many :supports
  has_many :supporters, through: :supports, source: :user
end
