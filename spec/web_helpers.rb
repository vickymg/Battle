def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'Vicky'
  fill_in :player_2_name, with: 'Joe'
  click_button 'Submit'
end
