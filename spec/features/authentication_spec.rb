require 'rails_helper'

RSpec.feature 'Authentications', type: :feature do
  before :each do
    @user = User.create(Fullname: 'user', Username: 'user1')
  end

  it 'Should Signup' do
    visit new_user_path
    fill_in 'Fullname', with: 'new_user'
    fill_in 'Username', with: 'newuser1'
    click_button 'Sign Up'
    expect(page).to have_content('Log in to Twitter')
  end

  it 'Should Login' do
    visit root_path
    fill_in 'Username', with: 'newuser1'
    click_button 'Log In'
    expect(page).to have_content('HOME')
    expect(page).to have_content('PROFILE')
    expect(page).to have_content('LOGOUT')
  end

  it 'Should Logout' do
    visit root_path
    fill_in 'Username', with: 'newuser1'
    click_button 'Log In'
    expect(page).to have_content('HOME')
    expect(page).to have_content('PROFILE')
    expect(page).to have_content('LOGOUT')
    click_on 'LOGOUT'
    expect(page).to have_content('Log in to Twitter')
  end
end
