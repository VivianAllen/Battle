feature 'win or lose game' do
  scenario 'player 1 wins' do
    sign_in_and_play('Bill', 'Steve')
    click_button 'PLAY'
    attack_rounds(18)
    click_button 'ATTACK'
    expect(page).to have_content 'Bill the Bin HAS WON!'
  end
end
