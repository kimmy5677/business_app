require 'rails_helper'

RSpec.describe "BusinessApplications", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/business_applications/index"
      expect(response).to have_http_status(:success)
    end
  end

end
