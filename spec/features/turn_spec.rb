require 'game'

feature "switch turns" do

  context "seeing the current turn" do

    scenario "at the start of the game" do
      sign_in_and_play
      expect(page).to have_content "Annabel's turn"
    end

    scenario "after player 1 attacks" do
      sign_in_and_play
      click_button "Attack"
      click_button "Continue game"
      expect(page).not_to have_content "Annabel's turn"
      expect(page).to have_content "Luke's turn"
    end

  end

end
