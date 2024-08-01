# Service for arrival controler logic
class ArrivalsService
  include HTTParty
  base_uri 'https://api.tfl.gov.uk'

  def initialize(station_id = '940GZZLUGPS')
    @station_id = station_id
  end

  def arrivals
    ArrivalsService.get("/StopPoint/#{@station_id}/Arrivals")
  end
end
