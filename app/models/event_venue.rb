class EventVenue < ApplicationRecord
	validates :name,presence: true, length: {minimum: 20}
	validates :capacity, presence: true, numericality: {greater_than: 0}
end
