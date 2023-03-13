require 'rails_helper'

RSpec.describe FibController, type: :controller do
  describe 'fibnocacci' do
      it "returns valid value" do
        get :index, params: { n: 5 }
        expect(response).to have_http_status(:success)
        expect(JSON.parse(response.body)).to eq({ "result" => 5 })
      end
      it "returns 400 error" do
        get :index, params: { n: -1 }
        expect(response).to have_http_status(:bad_request)
        expect(JSON.parse(response.body)).to eq({ "message" => "Bad request.","status" => 400 })      
      end
  end
end