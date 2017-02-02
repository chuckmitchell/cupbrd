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

require 'rails_helper'

RSpec.describe Item, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
