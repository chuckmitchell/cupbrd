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

require 'rails_helper'

RSpec.describe Unit, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
