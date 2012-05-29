if Rails.env.development?
  
  Time.zone = "America/Chicago"
  
  Flight.destroy_all
  User.destroy_all
  
  codes = ['ORD', 'JFK', 'SFO', 'LAX', 'BOS']
  
  50.times do 
    departure_code, arrival_code = codes.sample(2)
    departure_time = rand(8..20)
    flight_number = rand(100..999)

    # Now we can generate a new flight using the random departure time
    # Maybe something like the code below:
    #
    Flight.create :flight_number => flight_number,
                  :depart_code => departure_code, 
                  :arrive_code => arrival_code, 
                  :depart_time => (Date.today + departure_time.hours)
  end
  
  User.create(first: 'Emily', last: 'Ellison', email: 'emilyellison986@gmail.com', password: 'foobar', password_confirmation: 'foobar')
  User.create(first: 'Nehemiah', last: 'Ellison', email: 'nehemiah.ellison@gmail.com', password: 'foobar', password_confirmation: 'foobar')
  
end