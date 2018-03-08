feature 'Attacking Players' do

  scenario 'Player 2 is attacked' do
    sign_in_and_play('Bill', 'Steve')
    click_button 'ATTACK'
    expect(page).to have_content ('Bill the Bin ATTACKS')
  end

  scenario 'Player 2 is attacked and has their HP reduced by 10' do
    sign_in_and_play('Bill', 'Steve')
    click_button 'ATTACK'
    expect(page).to have_content ('Steve the Skip HP: 90')
  end

end
