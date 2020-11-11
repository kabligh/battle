feature "Enter names" do
  scenario "players see form and enter names" do
    visit('/')
    fill_in :player_1_name, with: "Annabel"
    fill_in :player_2_name, with: "Luke"
    click_button 'Submit'
    expect(page).to have_content("Annabel vs Luke")
  end
end 
