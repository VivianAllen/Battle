feature 'Attacking Players' do
  scenario 'Player 2 is attacked' do
    sign_in_and_play('Bill', 'Steve')
    click_button 'ATTACK'
    expect(page).to have_content ('Bill the Bin ATTACKS Steve the Skip')
  end
end
