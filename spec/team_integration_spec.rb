require("capybara/rspec")
require("./app")
require("launchy")
require("pry")
Capybara.app = Sinatra::Application



describe("path to index", {:type => :feature}) do
  it("shows the list of teams and allows you to add team.") do
    Team.clear()
    visit("/")
    fill_in("name", :with => "HyperVisors")
    click_button("Add Team")
    expect(page).to have_content("HyperVisors")
  end
end
