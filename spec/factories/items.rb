# == Schema Information
#
# Table name: items
#
#  id         :integer          not null, primary key
#  quantity   :decimal(, )      default("1")
#  unit_id    :integer
#  remaining  :integer          default("100")
#  food_id    :integer
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :item do
    quantity 9.99
    unit
    remaining 1 + Random.new.rand(1..100)
    food
    user
  end
end
