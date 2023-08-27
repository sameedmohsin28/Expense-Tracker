require 'rails_helper'

RSpec.describe Category, type: :model do
  before do
    @user1 = User.create(name: 'abc', email: 'abc@gmail.com', password: '123456')
    @category1 = Category.create(name: 'Grocery', icon: 'https://placekitten.com/200/200', user: @user1)
  end

  describe 'Model Validatons' do
    it 'name should be present' do
      @category1.name = nil
      expect(@category1).to be_valid
    end
  end
end
