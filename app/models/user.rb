class User < ApplicationRecord
  has_many :messages
  has_one_attached :avatar
end
