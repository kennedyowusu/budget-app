require 'rails_helper'

RSpec.describe Group, type: :model do
  it 'requires a name' do
    group = Group.new(icon: 'fa-users', author_id: 1)
    expect(group).to_not be_valid
  end

  it 'requires a name of at least 3 characters' do
    group = Group.new(name: 'Gr', icon: 'fa-users', author_id: 1)
    expect(group).to_not be_valid
  end

  it 'belongs to an author' do
    group = Group.new(name: 'Friends', icon: 'fa-users')
    expect(group).to_not be_valid
  end

  it 'is valid with all required attributes' do
    group = Group.new(name: 'Friends', icon: 'fa-users', author_id: 1)
    expect(group).to be_valid
  end

  it 'is valid with a name of minimum length' do
    group = Group.new(name: 'ABC', icon: 'fa-users', author_id: 1)
    expect(group).to be_valid
  end

  it 'is valid with a name of maximum length' do
    name = 'A' * 50
    group = Group.new(name: name, icon: 'fa-users', author_id: 1)
    expect(group).to be_valid
  end

  it 'is not valid with a name shorter than the minimum length' do
    group = Group.new(name: 'AB', icon: 'fa-users', author_id: 1)
    expect(group).to_not be_valid
  end

  it 'is not valid with a name longer than the maximum length' do
    name = 'A' * 51
    group = Group.new(name: name, icon: 'fa-users', author_id: 1)
    expect(group).to_not be_valid
  end
end
