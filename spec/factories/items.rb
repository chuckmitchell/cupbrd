# == Schema Information
#
# Table name: items
#
#  id         :integer          not null, primary key
#  quantity   :decimal(, )
#  unit_id    :integer
#  count      :integer
#  food_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :item do
    quantity 9.99
    unit_id 1
    count 1
    food_id 1
  end
end
