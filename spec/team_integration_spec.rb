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



  # it("shows the list of a team's members and allows you to add new members.") do
  #   Team.clear()
  #   Member.clear()
  #   visit("/")
  #   fill_in("name", :with => "HyperVisors")
  #   click_button("Add Team")
  #   click_link("HyperVisors")
  #   visit("/1")
  #   fill_in("name", :with => "Bigfoot")
  #   fill_in("skill", :with => "Running")
  #   fill_in("years", :with => "20")
  #   click_button("Add Member")
  #   expect(page).to have_content("Bigfoot", "Running", "20")
  # end
# end
