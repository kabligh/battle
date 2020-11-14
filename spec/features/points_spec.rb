feature "seeing player 2's points" do
  scenario "viewing points" do
    sign_in_and_play
    expect(page).to have_content("Luke: 100 Hit Points")
  end
end
