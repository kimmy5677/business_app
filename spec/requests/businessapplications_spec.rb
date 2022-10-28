require 'rails_helper'

RSpec.describe "Businessapplications", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/businessapplications/index"
      expect(response).to have_http_status(:success)
    end
  end

end
