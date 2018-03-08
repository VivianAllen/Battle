feature 'View HP' do
  scenario "Viewing Player 2's HP" do
    sign_in_and_play('Dave', 'Steve')
    expect(page).to have_content ("Steve HP: 100")
  end
end
