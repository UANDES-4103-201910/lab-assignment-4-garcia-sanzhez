class Event < ApplicationRecord
  belongs_to :event_venue
  has_many :ticket_types
  validates :start_date, presence: true
  validate :before_than_current_creation
  validates :event_venue, presence: true, uniqueness: {scope: :start_date,
    message: "You can't have two events at the same venue at the same date" }
  
  def before_than_current_creation
  	if start_date < Date.today
  		errors.add(:current_creation, "start date can't be before current date")
  	end
  end


end
