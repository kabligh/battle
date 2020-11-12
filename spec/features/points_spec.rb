feature "seeing player 2's points" do
  scenario "viewing points" do
    visit '/'
    fill_in :player_1_name, with: "Annabel"
    fill_in :player_2_name, with: "Luke"
    click_button 'Submit'
    expect(page).to have_content("Luke: 100HP")
  end
end
