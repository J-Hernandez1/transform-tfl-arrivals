require 'rails_helper'
require 'spec_helper'
require 'httparty'

RSpec.describe ArrivalsService, type: :service do
  let(:station_id) { '940GZZLUGPS' }
  let(:default_station_id) { '940GZZLUGPS' }
  let(:service) { described_class.new(station_id) }

  describe '#initialize' do
    it 'sets the station_id' do
      expect(service.instance_variable_get(:@station_id)).to eq(station_id)
    end

    it 'defaults to a specific station_id if none is provided' do
      default_service = described_class.new
      expect(default_service.instance_variable_get(:@station_id)).to eq(default_station_id)
    end
  end

  describe '#arrivals' do
    it 'makes a GET request to the correct endpoint and returns response' do
      response = service.arrivals

      expect(response).to be_a(HTTParty::Response)
      expect(response.code).to eq(200)
    end
  end
end
