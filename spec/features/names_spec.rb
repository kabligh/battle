feature "Enter names" do
  scenario "players see form and enter names" do
    sign_in_and_play
    expect(page).to have_content("Annabel vs Luke")
  end
end
