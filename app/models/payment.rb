class Payment < ApplicationRecord
  belongs_to :user
  has_many :category_payments
end
