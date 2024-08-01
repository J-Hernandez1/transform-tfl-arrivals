class ArrivalsController < ApplicationController
  def index
    arrivals = ArrivalsService.new.arrivals.parsed_response

    @arrivals = arrivals.sort_by { |arrival| arrival['expectedArrival'].to_datetime }
  end
end
