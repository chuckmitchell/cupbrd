# frozen_string_literal: true
require 'rails_helper'

require 'test_helpers'
RSpec.configure do |c|
  c.include TestHelpers
end


RSpec.describe "Users", type: :request do

  before :each do
    @admin_user = create_admin
    @headers = create_headers @admin_user.api_key
  end

  describe "GET /users" do

    it "should get access denied" do
      get v1_users_path
      expect(response).to have_http_status(:unauthorized)
    end

    it "should work with api key" do
      get v1_users_path, nil, @headers
      expect(response).to have_http_status(:ok)
    end
  end
end
