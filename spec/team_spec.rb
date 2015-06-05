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

  describe("#id") do
    it("returns the id of the team") do
      test_team = Team.new("Wildcats")
      expect(test_team.id()).to(eq(1))
    end
  end

  describe("#team_members") do
    it("initially returns an empty array of team members") do
      test_team = Team.new("Wildcats")
      expect(test_team.team_members()).to(eq([]))
    end
  end




end
