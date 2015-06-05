require('rspec')
require('team')
require ('member')

describe(Team) do
  before() do
    Team.clear()
  end

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

  describe(".all") do
    it("is empty at first") do
      expect(Team.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("adds a team to an array of saved teams") do
      test_team = Team.new("Wildcats")
      test_team.save
      expect(Team.all()).to(eq([test_team]))
    end
  end

  describe(".clear") do
    it("empties out all of the saved teams") do
      Team.new("Wildcats").save()
      Team.clear()
      expect(Team.all()).to(eq([]))
    end
  end

  describe(".find") do
    it("find a team based it's matching id") do
      test_team1 = Team.new("Wildcats")
      test_team1.save
      test_team2 = Team.new("Mustangs")
      test_team2.save
      expect(Team.find(test_team2.id)).to(eq(test_team2))
    end
  end





end
