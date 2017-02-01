# == Schema Information
#
# Table name: foods
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Food < ApplicationRecord
  validates :name, presence: true, allow_blank: false
  has_many :items, dependent: :destroy
end
