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

class Item < ApplicationRecord
  validates :quantity, presence: true, numericality: { greater_than: 0.00 }
  validates :remaining, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 100 }
  validates :user, presence: true
  validates :food, presence: true
  validates :unit, presence: true
  
  belongs_to :user
  belongs_to :food
  belongs_to :unit
end
