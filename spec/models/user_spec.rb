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

  it 'requires an email' do
    user = User.new(name: 'John Doe', password: 'password')
    expect(user).to_not be_valid
  end

  it 'requires a valid email format' do
    user = User.new(name: 'John Doe', email: 'invalid_email', password: 'password')
    expect(user).to_not be_valid
  end

  it 'requires a password' do
    user = User.new(name: 'John Doe', email: 'test@example.com')
    expect(user).to_not be_valid
  end

  it 'is valid with all required attributes' do
    user = User.new(name: 'John Doe', email: 'test@example.com', password: 'password')
    expect(user).to be_valid
  end

  it 'is valid with a name of minimum length' do
    user = User.new(name: 'ABC', email: 'test@example.com', password: 'password')
    expect(user).to be_valid
  end

  it 'is valid with a name of maximum length' do
    name = 'A' * 50
    user = User.new(name: name, email: 'test@example.com', password: 'password')
    expect(user).to be_valid
  end
end
