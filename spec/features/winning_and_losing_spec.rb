feature 'win or lose game' do
  scenario 'player 1 wins' do
    sign_in_and_play('Bill', 'Steve')
    attack_rounds(19)
    expect(page).to have_content 'Bill the Bin HAS WON!'
  end
end
