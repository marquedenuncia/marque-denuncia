class Incident < ActiveRecord::Base
  belongs_to :user
  belongs_to :incident_type
  belongs_to :establishment
  
  validates :description, :user, :incident_type, :establishment, presence: true
  validates :description, length: { maximum: 1000 }

  has_many :comments
  has_many :supports
  has_many :supporters, through: :supports, source: :user

  def address
    self.establishment && self.establishment.address
  end

  def address=(newaddress)
    unless newaddress.blank?
      self.establishment = if establishment = Establishment.find_by(:address => newaddress)
                             establishment
                           else
                             Establishment.create(:address => newaddress)
                           end
    end
  end
end
