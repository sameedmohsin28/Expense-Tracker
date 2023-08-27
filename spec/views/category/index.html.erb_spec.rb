require 'rails_helper'

RSpec.feature 'Category index page', type: :feature do
  before do
    @user1 = User.create(name: 'abc', email: 'abc@gmail.com', password: '123456')
    @category1 = Category.create(name: 'Grocery', icon: 'https://placekitten.com/200/200', user: @user1)

    sign_in @user1

    visit categories_path
  end

  scenario 'displays category icon' do
    expect(page).to have_css("img[src*='https://placekitten.com/200/200']")
  end

  scenario 'displays category name' do
    expect(page).to have_content('Grocery')
  end

  scenario 'displays category total amount' do
    expect(page).to have_content('0.00')
  end

  scenario 'displays category creation date' do
    expect(page).to have_content(@category1.created_at.strftime('%d %b %Y'))
  end

  scenario 'redirects to categories expenses page' do
    click_link @category1.name
    expect(page).to have_current_path(category_expenses_path(@category1))
  end
end
