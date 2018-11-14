class Event < ApplicationRecord
  belongs_to :sport
  has_many :user_events
  has_many :users, through: :user_events
end
