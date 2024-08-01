class ArrivalsController < ApplicationController
  def index
    @arrivals = ArrivalsService.new.arrivals.parsed_response
  end
end
