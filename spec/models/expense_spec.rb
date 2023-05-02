require 'rails_helper'

RSpec.describe Expense, type: :model do
  it 'requires a name' do
    expense = Expense.new(amount: 10, author_id: 1)
    expect(expense).to_not be_valid
  end

  it 'requires an amount' do
    expense = Expense.new(name: 'Groceries', author_id: 1)
    expect(expense).to_not be_valid
  end

  it 'requires a non-negative amount' do
    expense = Expense.new(name: 'Groceries', amount: -10, author_id: 1)
    expect(expense).to_not be_valid
  end

  it 'belongs to an author' do
    expense = Expense.new(name: 'Groceries', amount: 10)
    expect(expense).to_not be_valid
  end
end
