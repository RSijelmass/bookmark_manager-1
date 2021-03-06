

feature 'Seeing list of links' do
  scenario 'user can see list of links, even if it\'s empty' do
    Link.create(url: 'http://google.com', title: 'Google')
    visit '/links'
    expect(page.status_code).to eq 200

    # within 'ul#links' do
      expect(page).to have_content 'Google'
    #  end
  end
end
