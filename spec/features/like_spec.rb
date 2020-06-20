require 'rails_helper'

RSpec.feature 'Like', type: :feature do
  before :each do
    @user = User.create(Fullname: 'Lionel messi', Username: 'messi')
    @user = User.create(Fullname: 'Ronaldo christiano', Username: 'ronaldo')
    Opinion.create(AuthorId: @user.id, Text: 'my first post')
  end

  it 'Should like a created post' do
    visit root_path
    fill_in 'Username', with: 'messi'
    click_button 'Log In'
    fill_in 'opinion[Text]', with: 'This is an opinion'
    click_button 'Tweet'
    first(:css, ".user-2").click
    expect(page).to have_content('1 like')
  end

  it 'Should unlike a post' do
    visit root_path
    fill_in 'Username', with: 'messi'
    click_button 'Log In'
    fill_in 'opinion[Text]', with: 'This is an opinion'
    click_button 'Tweet'
    first(:css, ".user-2").click
    first(:css, ".user-1").click
    expect(page).to_not have_content('1 like')
  end
end