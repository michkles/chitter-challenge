# require 'spec_helper'
#
#
# feature 'Signing up' do
#   scenario 'creating new user by clicking register button' do
#     visit('/home')
#     fill_in :email, with: 'crazy@crazy.com'
#     fill_in :password, with: 'crazy'
#     fill_in :password_confirmation, with: 'crazy'
#     click_button 'Register'
#     expect(page).to have_content 'Thank you for registering crazy@crazy.com'
#   end
# end
