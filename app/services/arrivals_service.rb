# Service for arrival controler logic
class ArrivalsService
  require 'httparty'

  BASE_URL = 'https://api.tfl.gov.uk'.freeze

  def initialize(station_id)
    @station_id = station_id
  end

  def arrivals
    response = HTTParty.get("#{BASE_URL}/StopPoint/#{@station_id}/Arrivals")
    response.parsed_response
  end

  def fetch_arrivals_data
    arrivals_data = arrivals
    sort_by_arrival_time(arrivals_data)
  end

  private

  def sort_by_arrival_time(arrivals_data)
    arrivals_data.map { |data| Arrival.new(data) }
                 .sort_by { |arrival| arrival.expected_arrival.to_datetime }
  end
end
