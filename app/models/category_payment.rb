class CategoryPayment < ApplicationRecord
  belongs_to :categories
  belongs_to :payments
end
