# frozen_string_literal: true
require 'rails_helper'

RSpec.describe "Users", type: :request do
  describe "GET /users" do
    it "should get access denied" do
      get v1_users_path
      expect(response).to have_http_status(:unauthorized)
    end

    it "should work with api key" do
      user = FactoryGirl.create(:user)

      headers = {
        "Authorization" => "Token token=#{user.api_key}",
        "Content-Type" => "application/json",
        "ACCEPT" => "application/json" # This is what Rails 4 accepts
      }
      get v1_users_path, nil, headers
      expect(response).to have_http_status(:ok)
    end
  end
end
