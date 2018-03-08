feature 'View HP' do
  scenario "Viewing Player 2's HP" do
    p1name = 'Dave'
    p2name = 'Steve'
    visit('/')
    fill_in :player_1_name, with: p1name
    fill_in :player_2_name, with: p2name
    click_button 'Submit'
    expect(page).to have_content ("#{p2name} HP: 100")
  end
end
