class Support < ActiveRecord::Base
  belongs_to :incident
  belongs_to :user
end
