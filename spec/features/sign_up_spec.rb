require 'spec_helper'

feature 'Signing up' do

  scenario 'creating new user by clicking register button' do
    expect { sign_up }.to change(User, :count).by(1)
    expect(page).to have_content 'Thank you for registering crazy@crazy.com'
    expect(User.first.email).to eq('crazy@crazy.com')
  end

end
