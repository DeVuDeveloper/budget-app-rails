require 'rails_helper'

RSpec.describe "category_payments/edit", type: :view do
  before(:each) do
    @category_payment = assign(:category_payment, CategoryPayment.create!())
  end

  it "renders the edit category_payment form" do
    render

    assert_select "form[action=?][method=?]", category_payment_path(@category_payment), "post" do
    end
  end
end
