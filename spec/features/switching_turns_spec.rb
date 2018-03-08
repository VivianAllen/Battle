feature 'Swith Turns' do
  scenario 'Player 1 attacks and the turn switches to player 2' do
    sign_in_and_play('Dave', 'Steve')
    click_button 'ATTACK'
    expect(page).to have_content "Steve the Skip's turn!"
  end
end
