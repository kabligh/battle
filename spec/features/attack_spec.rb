feature "Attacking" do

  scenario "get confirmation for attacking player 2" do
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_content("Annabel attacked Luke 👊")
  end

  scenario "reduces player 2's HP by 10" do
    sign_in_and_play
    click_button "Attack"
    expect(page).not_to have_content("Luke: 100 Hit Points remaining")
    expect(page).to have_content("Luke: 90 Hit Points remaining")
  end

end
