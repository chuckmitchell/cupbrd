# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string
#  email      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  api_key    :string
#

# frozen_string_literal: true
require 'faker'

FactoryGirl.define do
  factory :user do
    name { Faker::Name.name_with_middle }
    email { Faker::Internet.email }
  end
end
