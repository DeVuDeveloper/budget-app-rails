require 'rails_helper'

RSpec.describe "category_payments/new", type: :view do
  before(:each) do
    assign(:category_payment, CategoryPayment.new())
  end

  it "renders new category_payment form" do
    render

    assert_select "form[action=?][method=?]", category_payments_path, "post" do
    end
  end
end
