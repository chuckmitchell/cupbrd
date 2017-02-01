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

class Item < ApplicationRecord
  validates :quantity, presence: true, numericality: { greater_than: 0.00 }
  validates :count, presence: true, numericality: { only_integer: true, greater_than: 0 }
  
  belongs_to :user
  belongs_to :food
  belongs_to :unit
end
