class EventVenue < ApplicationRecord
	validates :name,presence: true, lenght: {minimum: 20}
	validates :capacity, presence: true, numericality: {greater_than: 0}
end
