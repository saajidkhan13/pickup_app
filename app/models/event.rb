class Event < ApplicationRecord
  belongs_to :sport
  has_many :user_events
  has_many :users, through: :user_events

  validates :title, presence: true
  validates :location, presence: true
  validates :duration, presence: true, numericality: { greater_than_or_equal_to: 30 , less_than_or_equal_to: 300}
  validates :date, presence: true
  validates :time, presence: true
  validates :player_count, presence: true
end
