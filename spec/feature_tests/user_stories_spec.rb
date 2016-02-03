require 'spec_helper'

# USER STORY ONE
# As two Players,
# So we can play a personalised game of Battle,
# We want to Start a fight by entering our names and seeing them
feature 'Enter names' do
  scenario 'so two players can play a personalized battle, they can enter their names and see them.' do
    visit('/')
    fill_in :player_1_name, with: 'Vicky'
    fill_in :player_2_name, with: 'Joe'
    click_button 'Submit'
    expect(page).to have_content 'Vicky vs Joe'
  end
end

# # USER STORY TWO
# As Player 1,
# So I can see how close I am to winning
# I want to see Player 2's Hit Points
feature 'Hit points' do
  scenario "so player 1 knows how close they are to winning, player 1 can see player 2's hp" do
    visit('/')
    fill_in :player_1_name, with: 'Vicky'
    fill_in :player_2_name, with: 'Joe'
    click_button 'Submit'
    expect(page).to have_content ' HP'
  end
end
