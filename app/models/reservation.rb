class Reservation < ActiveRecord::Base
  attr_accessible :credit_card_number, :depart_date, :flight_id, :user_id
  
  belongs_to :user
  belongs_to :flight
  
  validates :credit_card_number, presence: true
  validates_numericality_of :credit_card_number, 
    greater_than_or_equal_to: 4000000000000000,
    less_than_or_equal_to: 4999999999999999,
    message: 'is invalid'
end
