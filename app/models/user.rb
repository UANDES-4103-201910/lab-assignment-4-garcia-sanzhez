


class User < ApplicationRecord
  has_many :orders
  validates :password, length: {in: 8..12}
  validates :phone, length: {in: 9..12}, numericality: true
  validtes :validate_each 

  def validate_each(record, attribute, value)
    unless value =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
      record.errors[attribute] << (options[:message] || "is not an email")
    end
  end
end
