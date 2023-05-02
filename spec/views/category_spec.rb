require 'rails_helper'

RSpec.describe 'groups page', type: :feature do
  before :each do
    @user = User.create(
      name: 'Kennedy',
      email: 'kennedy@test.com',
      password: '123456789'
    )

    visit new_user_session_path
    fill_in 'Email', with: @user.email
    fill_in 'Password', with: @user.password
    click_button 'Log in'
  end
end
