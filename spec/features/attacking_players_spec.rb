feature 'Attacking Players' do

  scenario 'Player 1 attacks' do
    sign_in_and_play('Bill', 'Steve')
    click_button 'PLAY'
    click_button 'ATTACK'
    expect(page).to have_content ('Bill the Bin ATTACKS')
  end

  scenario 'Player 2 attacks' do
    sign_in_and_play('Bill', 'Steve')
    click_button 'PLAY'
    click_button 'ATTACK'
    click_button 'PROCEED'
    click_button 'ATTACK'
    expect(page).to have_content ('Steve the Skip ATTACKS')
  end

end
