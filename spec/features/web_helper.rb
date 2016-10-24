def sign_up
  visit('/users/new')
  fill_in :email, with: 'crazy@crazy.com'
  fill_in :name, with: 'Crazy Crazy'
  fill_in :username, with: 'crazy2000'
  fill_in :password, with: 'crazy'
  fill_in :password_confirmation, with: 'crazy'
  click_button 'Register'
end
