feature 'Swith Turns' do
  scenario 'Player 1 attacks and the turn switches to player 2' do
    sign_in_and_play('Dave', 'Steve')
    click_button 'ATTACK'
    expect(page).to have_content "Steve the Skip's turn!"
  end
  scenario 'Player 1 attacks then player 2 attacks' do
    sign_in_and_play('Dave', 'Steve')
    click_button 'ATTACK'
    click_button 'ATTACK'
    expect(page).to have_content ("Dave the Bin's turn!")
  end
end
