feature 'peeping(posting messages)' do

  scenario 'creating peeps' do
    visit ('/peeps/new')
    fill_in 'message', with: 'my new car'
    click_button 'Peep'
    expect(current_path).to eq '/peeps'
    within 'ul#peeps' do
      expect(page).to have_content('my new car')
    end
  end

end
