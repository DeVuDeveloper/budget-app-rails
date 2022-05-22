class User < ApplicationRecord
  has_many :categories, dependent: :destroy
  has_many :payments, dependent: :destroy

  validates :name, presence: true
end
