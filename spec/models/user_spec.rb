# frozen_string_literal: true
require 'rails_helper'

RSpec.describe User, type: :model do
  it "has a valid factory" do
    expect(FactoryGirl.create(:user)).to be_valid
  end
  it "is invalid without a name" do
    expect(FactoryGirl.build(:user, name: nil)).to_not be_valid
  end
  it "is invalid without an email" do
    expect(FactoryGirl.build(:user, email: nil)).to_not be_valid
  end
  it "is given an api key after creation" do
    expect(FactoryGirl.create(:user).api_key).to_not be_nil
  end
  it "does not allow duplicate emails" do
    user = FactoryGirl.create(:user)
    expect(FactoryGirl.build(:user, email: user.email)).to_not be_valid
  end
end
