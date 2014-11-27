class Establishment < ActiveRecord::Base
  has_many :incidents

  validates :address, presence: true

  geocoded_by :address
  after_validation :geocode, if: :address_changed?
end
