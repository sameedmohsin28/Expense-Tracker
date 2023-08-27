require 'rails_helper'

RSpec.describe Expense, type: :model do
  before do
    @user1 = User.create(name: 'abc', email: 'abc@gmail.com', password: '123456')
    @category1 = Category.create(name: 'Grocery', icon: 'https://placekitten.com/200/200', user: @user1)
    @expense1 = Expense.create(name: 'Vegetables', amount: 24.50, author: @user1)
    @category1.expenses << @expense1
  end

  describe 'Model Validatons' do
    it 'name should be present' do
      @expense1.name = nil
      expect(@expense1).to be_valid
    end
  end
end
