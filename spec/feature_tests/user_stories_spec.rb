require 'spec_helper'

# USER STORY ONE
# As two Players,
# So we can play a personalised game of Battle,
# We want to Start a fight by entering our names and seeing them
feature 'Enter names' do
  scenario 'so two players can play a personalized battle, they can enter their names and see them.' do
    sign_in_and_play
    expect(page).to have_content 'Vicky vs Joe'
  end
end

# # USER STORY TWO
# As Player 1,
# So I can see how close I am to winning
# I want to see Player 2's Hit Points
feature 'Hit points' do
  scenario "so player 1 knows how close they are to winning, player 1 can see player 2's hp" do
    sign_in_and_play
    expect(page).to have_content ' HP'
  end
end


# USER STORY THREE
# As Player 1,
# So I can win a game of Battle,
# I want to attack Player 2, and I want to get a confirmation
feature 'attack' do
  scenario "so player 1 can win, player 1 can attack player 2 and get confirmation" do
    sign_in_and_play
    click_button 'ATTACK VICKY!'
    expect(page).to have_content 'You have attacked your opponent!'
  end
end

# USER STORY FOUR
# As Player 1,
# So I can start to win a game of Battle,
# I want my attack to reduce Player 2's HP
feature 'reduce health points' do
  scenario "player 1 attacks player 2, player 2 loses health points" do
    sign_in_and_play
    click_button 'ATTACK VICKY!'
    expect(page).to have_content '55 HP'
  end
end

# USER STORY FIVE
# As two Players,
# So we can continue our game of Battle,
# We want to switch turns
feature 'switch turns' do
  scenario "players switch turns" do
    sign_in_and_play
    click_button 'ATTACK VICKY!'
    click_button 'ATTACK JOE!'
    expect(page).to have_content '55 HP'
  end
end

# USER STORY SIX
# As a Player,
# So I can Lose a game of Battle,
# I want to see a 'Lose' message if I reach 0HP first
feature 'lose game' do
  scenario "lose message if no health points" do
    sign_in_and_play
    nearly_kill_vicky
    click_button 'ATTACK VICKY!'
    expect(page).to have_content 'Joe wins! Vicky is dead :-('
  end
end
