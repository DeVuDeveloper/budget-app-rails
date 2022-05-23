class Payment < ApplicationRecord
  belongs_to :user
  has_many :category_payments

  validates :name, length: { in: 1..10 }, presence: true, allow_blank: false
  validates :amount, numericality: { only_integer: true, greater_than: 0 }
end
