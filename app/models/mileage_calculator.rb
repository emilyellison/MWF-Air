class MileageCalculator
   
  CHART = { 'ORD-SFO' => 1846,
            'ORD-BOS' => 867,
            'ORD-JFK' => 740,
            'ORD-LAX' => 1745,
            'SFO-BOS' => 2704,
            'SFO-JFK' => 2586,
            'SFO-LAX' => 337,
            'BOS-JFK' => 187,
            'BOS-LAX' => 2611,
            'JFK-LAX' => 2475 
          }
  
  def initialize(departure_airport_code, arrival_airport_code)
    @departure_airport_code = departure_airport_code
    @arrival_airport_code = arrival_airport_code
  end
  
  def miles
    miles = CHART["#{@departure_airport_code}-#{@arrival_airport_code}"]
    if miles.nil?
      miles = CHART["#{@arrival_airport_code}-#{@departure_airport_code}"]
    end
    miles
  end
  
  def duration
    
  end
  
end

