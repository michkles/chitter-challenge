feature 'User sign up' do

  scenario 'requires a matching confirmation password' do
    expect { sign_up(password_confirmation: 'craZy') }.not_to change(User, :count)
  end

  def sign_up(email: 'alice@example.com',
              name: 'Crazy Crazy',
              username: 'crazy2000',
              password: 'crazy',
              password_confirmation: 'crazy')
    visit('/users/new')
    fill_in :email, with: email
    fill_in :name, with: name
    fill_in :username, with: username
    fill_in :password, with: password
    fill_in :password_confirmation, with: password_confirmation
    click_button 'Register'
  end

end
