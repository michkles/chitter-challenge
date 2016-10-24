require 'spec_helper'

feature 'viewing peeps' do

  scenario 'viewing peeps posted on website' do
    Peep.create(message: 'I am in the toilet now')
    visit ('/peeps')
    expect(page.status_code).to eq 200
    within 'ul#peeps' do
      expect(page).to have_content('I am in the toilet now')
    end
  end

end
