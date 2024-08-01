require 'rails_helper'
require 'spec_helper'
require 'httparty'


RSpec.describe ArrivalsService, type: :service do
  let(:station_id) { '940GZZLUGPS' }
  let(:service) { described_class.new(station_id) }
  let(:mock_response) do
    [
      { "lineId" => "victoria", "expectedArrival" => "2024-08-01T12:00:00Z" },
      { "lineId" => "central", "expectedArrival" => "2024-08-01T11:30:00Z" }
    ]
  end

  describe '#initialize' do
    it 'sets the station_id instance variable' do
      expect(service.instance_variable_get(:@station_id)).to eq(station_id)
    end
  end

  describe '#arrivals' do
    before do
      allow(HTTParty).to receive(:get).and_return(double(parsed_response: mock_response))
    end

    it 'makes a GET request to the correct endpoint' do
      service.arrivals
      expect(HTTParty).to have_received(:get).with("https://api.tfl.gov.uk/StopPoint/#{station_id}/Arrivals")
    end

    it 'returns the parsed response' do
      response = service.arrivals
      expect(response).to eq(mock_response)
    end
  end

  describe '#fetch_arrivals_data' do
    before do
      allow(service).to receive(:arrivals).and_return(mock_response)
    end

    it 'returns sorted arrivals by expected arrival time' do
      sorted_arrivals = service.fetch_arrivals_data
      expect(sorted_arrivals.first.expected_arrival.to_datetime).to eq(DateTime.parse("2024-08-01T11:30:00Z"))
    end

    it 'places the later arrival last' do
      sorted_arrivals = service.fetch_arrivals_data
      expect(sorted_arrivals.last.expected_arrival.to_datetime).to eq(DateTime.parse("2024-08-01T12:00:00Z"))
    end
  end
end
