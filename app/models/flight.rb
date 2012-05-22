class Flight < ActiveRecord::Base
  attr_accessible :arrive_code, :depart_code, :depart_time, :distance, :flight_number

end
