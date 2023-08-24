require 'rails_helper'

RSpec.describe "Expenses", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/expense/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
    it "returns http success" do
      get "/expense/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/expense/create"
      expect(response).to have_http_status(:success)
    end
  end

end
