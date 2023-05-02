require 'rails_helper'

RSpec.describe 'groups page', type: :feature do
  before :each do
    @user = User.create(
      name: 'John',
      email: 'john@example.com',
      password: 'password'
    )

    visit new_user_session_path
    fill_in 'Email', with: @user.email
    fill_in 'Password', with: @user.password
    click_button 'Log in'
  end

  it 'should display the category page' do
    expect(page).to have_selector('div', text: 'CATEGORY')
  end

  it 'should display add new category button' do
    expect(page).to have_link('Add a new category')
  end

  it 'should display the category form' do
    click_link 'Add a new category'
    expect(page).to have_selector('div', text: 'NEW CATEGORY')
  end
end
