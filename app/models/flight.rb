class Flight < ActiveRecord::Base
  attr_accessible :arrive_code, :depart_code, :depart_time, :distance, :flight_number

  has_many :reservations
  before_save :calculate_distance
  has_many :users, through: :reservations
  
  def calculate_distance
    self.distance = MileageCalculator.new(arrive_code, depart_code).miles
  end

end
