class User < ActiveRecord::Base
  validates :username, :first_name, :last_name, :cpf, :birth, :gender, :email, presence: true
  validates :gender, inclusion: { in: %w( F M O ) }
  validates :fist_name, :last_name, length: { maximum: 30 }
  validates :cpf, format: { with: /^(\d{3}\.?\d{3}\.?\d{3})-?(\d{2})$/i, on: :create }
  validates :email, uniqueness: { case_sensitive: false }, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, on: :create }
  validates :username, uniqueness: { case_sensitive: false }, format: { with: /\A[-a-z0-9]+\Z/i, on: :create }
end
