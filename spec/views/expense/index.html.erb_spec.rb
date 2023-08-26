require 'rails_helper'

RSpec.feature 'Expense index page', type: :feature do
  before do
    @user1 = User.create(name: 'abc', email: 'abc@gmail.com', password: '123456')
    @category1 = Category.create(name: 'Grocery', icon: 'https://placekitten.com/200/200', user: @user1)
    @expense1 = Expense.create(name: 'Vegetables', amount: 24.50, author: @user1)
    @category1.expenses << @expense1

    visit category_expenses_path(@category1)
  end

  scenario 'displays category name' do
    expect(page).to have_content('Grocery')
  end

  scenario 'displays total category amount' do
    expect(page).to have_content('24.50')
  end

  scenario 'displays expense name' do
    expect(page).to have_content('Vegetables')
  end

  scenario 'displays expense amount' do
    expect(page).to have_content('24.50')
  end

  scenario 'displays category creation date' do
    expect(page).to have_content(@expense1.created_at.strftime('%d %b %Y'))
  end
end
