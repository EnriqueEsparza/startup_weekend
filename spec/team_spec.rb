require('rspec')
require('team')
require ('member')

describe(Team) do
  # before() do
  #   Team.clear()
  # end

  describe("#name") do
    it("returns the name of the team") do
      test_team = Team.new("Wildcats")
      expect(test_team.name()).to(eq("Wildcats"))
    end
  end
end
