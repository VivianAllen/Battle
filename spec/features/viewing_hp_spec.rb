feature 'View HP' do
  scenario "Viewing Player 2's HP" do
    sign_in_and_play('Dave', 'Steve')
    expect(page).to have_content ("Dave the Bin HP: 100")
    expect(page).to have_content ("Steve the Skip HP: 100")
  end
end
