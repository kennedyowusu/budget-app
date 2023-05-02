require 'rails_helper'

RSpec.describe 'Transactions page', type: :feature do
  before :each do
    @user = User.create(
      id: 1,
      name: 'Kennedy',
      email: 'kennedy@test.com',
      password: '123456789'
    )

    visit new_user_session_path

    fill_in 'Email', with: @user.email
    fill_in 'Password', with: @user.password
    click_button 'Log in'

    @category = Group.new(name: 'Posh Cars', icon: 'nil', author: @user)
    @category.save

    @groceries = Group.create(name: 'Posh Cars',
                              icon: 'https://images.unsplash.com/photo-1680768806957-f287b79124ef?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80', author: @user)

    @transaction = Expense.new(name: 'Toyota', amount: 100, author_id: @user.id)
    @transaction.groups << @groceries
    @transaction.save

    visit new_user_expense_path(@category.author)
  end
end
