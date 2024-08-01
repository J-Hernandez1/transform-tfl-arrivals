require 'rails_helper'

RSpec.describe 'ArrivalsController', type: :request do
  describe 'GET /arrivals' do
    before do
      # Make the GET request to the index action
      get '/arrivals'
      end

    it 'responds with HTTP success' do
        expect(response).to have_http_status(:ok)
    end
  end
end
