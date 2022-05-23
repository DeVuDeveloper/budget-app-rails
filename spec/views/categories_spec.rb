require 'rails_helper'

RSpec.describe 'Test for Category page', type: :feature do
  describe 'Category page' do
    before :each do
      User.create(name: 'John', email: 'john@gmail.com', password: 'john123', confirmed_at: Time.now)
      visit new_user_session_path
      fill_in 'Email', with: 'john@gmail.com'
      fill_in 'Password', with: 'john123'
      click_button 'Log in'
    end

    it 'if signed successfully' do
        expect(page).to have_content('Signed in successfully.')
      end

    it 'if can see title' do
      expect(page).to have_content('CATEGORIES')
    end

    it 'if can see add category button' do
      expect(page).to have_content('Add category')
    end

    it 'if can see recent links' do
      expect(page).to have_content('Most recents')
    end
  end
end
