class Support < ActiveRecord::Base
  belongs_to :incident
  belongs_to :user

  validates :incident, :user, presence: true
end
