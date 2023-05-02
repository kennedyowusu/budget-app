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
end
