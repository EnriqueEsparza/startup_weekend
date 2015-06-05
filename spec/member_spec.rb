require('rspec')
require('team')
require ('member')

describe(Member) do
  # before() do
  #   Team.clear()
  # end

  describe("#name") do
    it("returns the name of a member") do
      test_member = Member.new("Jon Doe")
      expect(test_member.name()).to(eq("Jon Doe"))
    end
  end




end
