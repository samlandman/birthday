def sign_in_and_play
  visit('/')
    fill_in :name, with: 'Sam'
    fill_in :day, with: 1
    fill_in :month, with: 2
    click_button 'Submit'
end