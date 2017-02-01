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

class Unit < ApplicationRecord
  enum measurement_type: [:liquid, :dry, :whole] unless Unit.methods.include? :count

  validates :name, presence: true
  validates :measurement_type, presence: true
end
