class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :incident

  validates :description, :user, :incident_type, :anonymous, presence: true
  validates :description, length: { maximum: 500}
end
