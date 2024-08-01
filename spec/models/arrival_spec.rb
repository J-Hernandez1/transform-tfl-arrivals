require 'rails_helper'

RSpec.describe Arrival, type: :model do
  let(:data) do
    {
      'lineName' => 'Victoria',
      'destinationName' => 'Brixton',
      'expectedArrival' => '2024-08-01T12:00:00Z',
      'platformName' => '2'
    }
  end

  subject { described_class.new(data) }

  describe '#initialize' do
    it 'initializes with the correct attribute of line name' do
      expect(subject.line_name).to eq('Victoria')
    end
    it 'initializes with the correct attribute of destination name' do
      expect(subject.destination_name).to eq('Brixton')
    end
    it 'initializes with the correct attributes of expected arrival' do
      expect(subject.expected_arrival).to eq('2024-08-01T12:00:00Z')
    end
    it 'initializes with the correct attributes of platform name' do
      expect(subject.platform_name).to eq('2')
    end
  end

  describe '#expected_arrival_time' do
    it 'formats the expected arrival time correctly' do
      formatted_time = subject.expected_arrival_time
      expected_time = Time.at(Time.parse('2024-08-01T12:00:00Z').to_i).strftime("%H:%M:%S")

      expect(formatted_time).to eq(expected_time)
    end
  end
end
