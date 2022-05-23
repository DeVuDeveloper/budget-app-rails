class CategoryPayment < ApplicationRecord
  belongs_to :category
  belongs_to :payment

  after_validation :total

  def total
    category = Category.find(category_id)
    payment = Payment.find(payment_id)
    category.update(total_amount: category.total_amount + payment.amount)
  end
end
