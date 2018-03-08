def sign_in_and_play(p1name, p2name)
  visit('/')
  fill_in :player_1_name, with: p1name
  fill_in :player_2_name, with: p2name
  click_button 'Submit'
end

def attack_rounds(rounds)
  rounds.times do
    click_button 'ATTACK'
  end
end

def attack_until_won
  loop do
    click_button 'ATTACK'
    break if page.has_content?('HAS WON')  
  end
end
