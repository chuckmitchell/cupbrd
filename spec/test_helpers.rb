module TestHelpers
  def create_admin
    FactoryGirl.create(:user)
  end
  
  def create_headers(api_key)
    {
      "Authorization" => "Token token=#{api_key}",
      "Content-Type" => "application/json",
      "ACCEPT" => "application/json" # This is what Rails 4 accepts
    }
  end
end