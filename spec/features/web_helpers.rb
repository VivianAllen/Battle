def sign_in_and_play(p1name, p2name)
  visit('/')
  fill_in :player_1_name, with: p1name
  fill_in :player_2_name, with: p2name
  click_button 'Submit'
end
