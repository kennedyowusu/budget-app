require 'rails_helper'

RSpec.describe User, type: :model do
  it 'requires a name' do
    user = User.new(email: 'test@example.com', password: 'password')
    expect(user).to_not be_valid
  end

  it 'requires a name between 3 and 50 characters' do
    user = User.new(name: 'A', email: 'test@example.com', password: 'password')
    expect(user).to_not be_valid

    user = User.new(name: 'A' * 51, email: 'test@example.com', password: 'password')
    expect(user).to_not be_valid
  end
end
