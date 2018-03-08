feature 'Enter names' do
  scenario 'submitting names' do
    sign_in_and_play('Dave', 'Steve')
    expect(page).to have_content 'Dave the Bin vs. Steve the Skip, '\
    'FIIIIIIIGHT!!!'
  end
end
