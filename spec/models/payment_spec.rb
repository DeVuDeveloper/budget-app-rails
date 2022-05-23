require 'rails_helper'

RSpec.describe Payment, type: :model do
  describe 'validates' do
    before(:each) do
      @user = User.new(name: 'John', email: 'john@mail.com', password: 'john')
      @category = @user.categories.new(user_id: @user.id, name: 'Power',
                                       icon: 'https://cdn.vectorstock.com/i/1000x1000/95/52/electric-lighting-icon-power-symbol-vector-27939552.webp')

      @payment = Payment.new(user_id: @user.id, name: 'No 12345', amount: 24)
    end

    it 'if there is no name' do
      @payment.name = nil
      expect(@payment).to_not be_valid
    end

    it 'if amount is empty' do
      @payment.amount = nil
      expect(@payment).to_not be_valid
    end
  end
end
