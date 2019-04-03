


class User < ApplicationRecord
  has_many :orders
  validates :password, length: {in: 8..12}
  validates :phone, length: {in: 9..12}, numericality: true
  validates :email, presence: true, format: {with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, message: "Invalid email"} 
end
