# feature 'test homepage displays "Testing infrastructure working!"' do
#   scenario "arriving on homepage" do
#     visit '/'
#     expect(page).to have_content('Testing infrastructure working!')
#   end
# end
feature 'Enter names' do
  scenario 'players enter name and it returns input on the screen' do
    sign_in_and_play
    expect(page).to have_content 'Sam'
  end
end
