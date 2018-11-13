class User < ApplicationRecord
  has_many :groups
  has_many :sports, through: :groups
  has_secure_password
end
