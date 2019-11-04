class Event < ApplicationRecord
	validates :start_date, presence: true
	validates :duration, presence: true
	validates :title, presence: true, length: { in: 5..140 }
	validates :description, presence: true, length: { in: 20..1000 }
	validates :price, presence: true, :greater_than => 0, :less_than => 1001
	validates :location, presence: true

	has_many :attendances
	has_many :users, through: :attendances
	belongs_to :user
end
