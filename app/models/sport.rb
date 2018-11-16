class Sport < ApplicationRecord
  has_many :events
  has_many :groups
  has_many :users, through: :groups
end
