require 'rails_helper'

RSpec.describe Category, type: :model do
  describe 'Category validation tests' do
    before(:each) do
      @user = User.new(name: 'John', email: 'john@mail.com', password: 'john')
      @category = @user.categories.new(user_id: @user.id, name: 'Power',
                                       icon: 'https://cdn.vectorstock.com/i/1000x1000/95/52/electric-lighting-icon-power-symbol-vector-27939552.webp')
    end

    it 'if category has name' do
      @category.name = nil
      expect(@category).to_not be_valid
    end

    it ' name is string' do
      @category.name = 'Power'
      expect(@category).to be_valid
    end
  end
end
