require 'rails_helper'

RSpec.describe "category_payments/show", type: :view do
  before(:each) do
    @category_payment = assign(:category_payment, CategoryPayment.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
