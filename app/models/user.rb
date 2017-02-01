# frozen_string_literal: true
class User < ApplicationRecord
  validates :name, presence: true, allow_blank: false
  validates :email, presence: true, uniqueness: true, allow_blank: false

  # Assign an API key on create
  before_create do |user|
    user.api_key = user.generate_api_key
  end

  # Generate a unique API key
  def generate_api_key
    loop do
      token = SecureRandom.base64.tr('+/=', 'Qrt')
      break token unless User.exists?(api_key: token)
    end
  end
end
