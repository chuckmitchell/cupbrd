# == Schema Information
#
# Table name: units
#
#  id               :integer          not null, primary key
#  name             :string
#  symbol           :string
#  measurement_type :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

FactoryGirl.define do
  factory :unit do
    name "unit name"
    symbol "unit symbol"
    type [:dry, :liquid, :whole].sample
  end
end
