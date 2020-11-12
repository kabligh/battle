feature "Attacking player 2" do
  scenario "Get confirmation for attacking" do
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_content("Annabel attacked Luke 👊")
  end
end
