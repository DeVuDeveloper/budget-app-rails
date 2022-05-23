require 'rails_helper'

RSpec.describe 'Payment page', type: :feature do
  describe 'Test for Payment page' do
    before(:each) do
      @user = User.create(name: 'John', email: 'john@gmail.com', password: 'john123', confirmed_at: Time.now)
      @category = Category.create(user: @user, name: 'Transport', icon: 'Transport.jpeg')
      @payment = Payment.create(user_id: @user, name: 'No 4564', amount: 114)
    end

    before(:each) do
      visit new_user_session_path
      within('#new_user') do
        fill_in 'Email', with: @user.email
        fill_in 'Password', with: @user.password
      end
      click_button 'Log in'
      visit user_category_payments_path(@user.id, @category.id)
    end

    it 'if can see title of page' do
      expect(page).to have_content 'PAYMENTS'
    end

    it 'if it redirect to create form entity on click' do
      click_link 'Add Transaction'
      expect(page).to have_current_path(new_user_category_payment_path(@user.id, @category.id))
    end

    it 'if can choose category' do
      expect(page).to have_content('TOTAL PAYMENT')
    end

    it 'if can see name of category' do
      expect(page).to have_content('Transport')
    end
  end
end
