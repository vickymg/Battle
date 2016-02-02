require 'capybara/rspec'

# USER STORY ONE
# As two Players,
# So we can play a personalised game of Battle,
# We want to Start a fight by entering our names and seeing them
feature 'Enter names' do
  scenario 'so two players can play a personalized battle, they can enter their names and see them.' do
    visit('/')
    fill_in :player_1_name, with: 'Marcus'
    fill_in :player_2_name, with: 'Joe'
    click_button 'Submit'
    expect(page).to have_content 'Marcus vs Joe'
  end
end
