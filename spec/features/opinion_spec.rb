require 'rails_helper'

RSpec.feature 'Opinion', type: :feature do
  before :each do
    @user = User.create(Fullname: 'Lionel messi', Username: 'messi')
    @user = User.create(Fullname: 'Ronaldo christiano', Username: 'ronaldo')
    Opinion.create(AuthorId: @user.id, Text: 'my first post')
  end

  it 'Should create an opinion' do
    visit root_path
    fill_in 'Username', with: 'messi'
    click_button 'Log In'
    fill_in 'opinion[Text]', with: 'This is an opinion'
    click_button 'Tweet'
    expect(page).to have_content('HOME')
  end
end
