class User < ApplicationRecord
  has_many :user_events
  has_many :events, through: :user_events
  has_secure_password

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true
  validates :age, presence: true
  validates :gender, presence: true
end
