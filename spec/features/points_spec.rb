feature "seeing player 2's points" do
  scenario "viewing points" do
    visit '/'
    sign_in_and_play
    expect(page).to have_content("Luke: 100HP")
  end
end
