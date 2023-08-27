require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user1 = User.create(name: 'abc', email: 'abc@gmail.com', password: '123456')
  end

  describe 'Model Validatons' do
    it 'name should be present' do
      @user1.name = nil
      expect(@user1).to be_valid
    end
  end
end
