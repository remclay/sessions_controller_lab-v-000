require 'rails_helper'

describe 'home page', :type => :feature do

  it 'displays login link if not logged in' do
    visit '/'
    expect(page).to have_button('login')
  end

  it 'welcomes the user if they are logged in' do
    set session[:name].to "Tracey"
    visit '/'
    expect(page).to have_content("Hi,")
  end

  it 'displays logout link if logged in' do
    visit '/'
    expect(page).to have_button('logout')
  end
end

# describe 'login page', :type => :feature do
#   it 'displays login form' do
#     expect(page).to include logout link
#   end
#
#   it 'user can enter name on form and be logged in' do
#     expect(response).to include logout link
#     fill_in
#   end
#
#   it 'successfully signs in' do
#   end
#
#   it 'sets session[:name] if :name was given' do
#     me = 'Werner Brandes'
#     post :create, name: me
#     expect(@request.session[:name]).to eq me
#   end
#
#   it 'redirects to "/" if logged in' do
#     me = 'Werner Brandes'
#     post :create, name: me
#     expect(response).to redirect_to('/')
#   end
#
# it 'successfully signs up' do
#    signup_valid
#  end
#
#  it 'fails to sign up' do
#    signup_invalid
#  end
#
#  it 'remains logged in after signing up' do
#    signup_valid
#    click_link('New Post')
#    expect(page).to have_content("#{@kitten.name}")
#    expect(page.get_rack_session_key('user_id')).to_not eq(nil)
#  end
# end
