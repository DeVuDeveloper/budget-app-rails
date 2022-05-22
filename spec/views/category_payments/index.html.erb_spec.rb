require 'rails_helper'

RSpec.describe "category_payments/index", type: :view do
  before(:each) do
    assign(:category_payments, [
      CategoryPayment.create!(),
      CategoryPayment.create!()
    ])
  end

  it "renders a list of category_payments" do
    render
  end
end
