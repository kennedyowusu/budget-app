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

  it 'is valid with all required attributes' do
    expense = Expense.new(name: 'Groceries', amount: 10, author_id: 1)
    expect(expense).to be_valid
  end

  it 'is valid with a name of minimum length' do
    expense = Expense.new(name: 'abc', amount: 10, author_id: 1)
    expect(expense).to be_valid
  end

  it 'is valid with a name of maximum length' do
    name = 'a' * 50
    expense = Expense.new(name: name, amount: 10, author_id: 1)
    expect(expense).to be_valid
  end

  it 'is not valid with a name shorter than the minimum length' do
    expense = Expense.new(name: 'ab', amount: 10, author_id: 1)
    expect(expense).to_not be_valid
  end

  it 'is not valid with a name longer than the maximum length' do
    name = 'a' * 51
    expense = Expense.new(name: name, amount: 10, author_id: 1)
    expect(expense).to_not be_valid
  end

  it 'is valid with a non-negative amount' do
    expense = Expense.new(name: 'Groceries', amount: 0, author_id: 1)
    expect(expense).to be_valid
  end
end
