class ArrivalsController < ApplicationController
  def index
    @arrivals = ArrivalsService.new.arrivals.parsed_response
    raise
  end
end
