feature 'win or lose game' do
  scenario 'a player wins' do
    sign_in_and_play('Bill', 'Steve')
    loopcount = 1
    loop do
      click_button 'ATTACK'
      loopcount += 1
      break if page.has_content?('HAS WON')
      break if loopcount > 100
    end
    expect(page).to have_content 'HAS WON!'
  end
end
