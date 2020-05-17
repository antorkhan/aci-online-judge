require 'rails_helper'

RSpec.describe User, type: :model do
  context 'validation test' do
    it 'ensures email presence' do
      user = User.new(first_name: 'Antor').save
      expect(user).to eq(false)
    end
    it 'should pass' do
      user = User.new(first_name: 'Antor', last_name: 'Khan', email: 'antorkhan@gmail.com', password: '123123').save!
      expect(!!user).to eq(true)
    end
  end
end
