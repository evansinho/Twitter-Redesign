require 'rails_helper'

RSpec.feature 'Following', type: :feature do
  before :each do
    @user = User.create(Fullname: 'Lionel messi', Username: 'messi')
    @user = User.create(Fullname: 'Ronaldo christiano', Username: 'ronaldo')
  end
  it 'Should be able to follow a user' do
    visit login_path
    fill_in 'Username', with: 'messi'
    click_button 'Log In'
    click_on 'Ronaldo christiano'
    first(:css, ".font-follow-icon").click
    expect(page).to have_content('HOME')
  end

  it 'Should be able to unfollow a user' do
    visit login_path
    fill_in 'Username', with: 'messi'
    click_button 'Log In'
    click_on 'Ronaldo christiano'
    first(:css, ".font-follow-icon").click
    first(:css, ".font-unfollow-icon").click
    expect(page).to have_content('HOME')
  end
end