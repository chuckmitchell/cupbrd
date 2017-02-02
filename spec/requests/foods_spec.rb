require 'rails_helper'

require 'test_helpers'
RSpec.configure do |c|
  c.include TestHelpers
end

RSpec.describe "Foods", type: :request do
  
  before :each do
    @admin_user = create_admin
    @headers = create_headers @admin_user.api_key
  end
  
  describe "GET /foods" do
    it "works! (now write some real specs)" do
      get v1_foods_path, nil, @headers
      expect(response).to have_http_status(200)
    end
  end
end
