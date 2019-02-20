require "./app.rb"
require_relative "web_helpers"

feature 'Enter names' do
  scenario 'submitting names' do
    sign_in_and_play
    expect(page).to have_content 'Dave vs. Mittens'
  end
end

feature "Viewing Player2's hitpoints" do
  scenario 'view hp' do
    sign_in_and_play
    expect(page).to have_content "Mittens's HP 2"
  end
end

feature "Attacking Player 2" do
  scenario "attack player 2 " do
    sign_in_and_play
    #unknown method
    expect(page.boxed).to have_content "Player 1 attacked Player 2 ... dmg"

end
