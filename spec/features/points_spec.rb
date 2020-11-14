feature "seeing hit points" do
  scenario "viewing player 2 points" do
    sign_in_and_play
    expect(page).to have_content("Luke: 100 Hit Points")
  end

  scenario "viewing player 1 points" do
    sign_in_and_play
    expect(page).to have_content("Annabel: 100 Hit Points")
  end 
end
