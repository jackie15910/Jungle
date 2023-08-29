require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do
    it 'must have a minimum length for password' do
      user = User.new(
        password: 'password',
        password_confirmation: 'password',
        email: 'test@example.com'
      )
      user.password = 'short'
      user.password_confirmation = 'short'
      expect(user).to_not be_valid
    end

    it 'should authenticate with spaces around email' do
      user = User.create(
        password: 'password',
        password_confirmation: 'password',
        email: 'test@example.com'
      )
      expect(User.authenticate_with_credentials(' test@example.com ', 'password')).to eq(user)
    end

    it 'should authenticate with case-insensitive email' do
      user = User.create(
        password: 'password',
        password_confirmation: 'password',
        email: 'test@example.com'
      )
      expect(User.authenticate_with_credentials('Test@EXAMPLE.com', 'password')).to eq(user)
    end
  end
end