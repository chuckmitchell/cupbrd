# frozen_string_literal: true
require 'faker'

FactoryGirl.define do
  factory :user do
    name { Faker::Name.name_with_middle }
    email { Faker::Internet.email }
  end
end
