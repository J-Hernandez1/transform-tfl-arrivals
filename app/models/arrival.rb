class Arrival
  attr_reader :line_name, :destination_name, :expected_arrival, :platform_name

  def initialize(data)
    @line_name = data['lineName']
    @destination_name = data['destinationName']
    @expected_arrival = data['expectedArrival']
    @platform_name = data['platformName']
  end

  def expected_arrival_time
    Time.at(expected_arrival.to_datetime.to_i).strftime("%H:%M:%S")
  end
end
