feature 'peeping' do

  scenario 'posting(peeping) messages on website' do
    Peep.create(message: 'I am in the toilet now :)', created_on: '12-12-2012', created_at: '12:12')
    visit ('/peeps')
    expect(page.status_code).to eq 200
    within 'ul#links' do
      expect(page).to have_content('I am in the toilet now')
    end
  end

end
