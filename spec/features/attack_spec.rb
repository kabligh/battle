feature "Attacking" do

  scenario "get confirmation for attacking player 2" do
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_content("Annabel attacked Luke 👊")
  end

  scenario "attack reduces player 2's HP by 10" do
    sign_in_and_play
    click_button "Attack"
    click_button "Continue game"
    expect(page).not_to have_content("Luke: 100 Hit Points")
    expect(page).to have_content("Luke: 90 Hit Points")
  end

  scenario "be attacked by player 2" do
    sign_in_and_play
    click_button "Attack"
    click_button "Continue game"
    click_button "Attack"
    expect(page).to have_content("Luke attacked Annabel 💥")
  end

  scenario "player 2 attack reduces player 1 HP by 10" do
    sign_in_and_play
    click_button "Attack"
    click_button "Continue game"
    click_button "Attack"
    click_button "Continue game"
    expect(page).not_to have_content("Annabel: 100 Hit Points")
    expect(page).to have_content("Annabel: 90 Hit Points")
  end

end
