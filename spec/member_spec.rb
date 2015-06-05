require('rspec')
require ('member')

describe(Member) do
  before() do
    Member.clear()
  end

  describe("#name") do
    it("returns the name of a member") do
      test_member = Member.new("Jon Doe", "Ruby", 3)
      expect(test_member.name()).to(eq("Jon Doe"))
    end
  end

  describe("#skill") do
    it("returns the skill/software a member can contribute") do
      test_member = Member.new("Jon Doe", "Ruby", 3)
      expect(test_member.skill()).to(eq("Ruby"))
    end
  end

  describe("#years") do
    it("returns the number of years member has experience with skill/software") do
      test_member = Member.new("Jon Doe", "Ruby", 3)
      expect(test_member.skill()).to(eq("Ruby"))
    end
  end

  describe("#save") do
    it("adds a member to the array of saved member") do
      test_member = Member.new("Jon Doe", "Ruby", 3)
      test_member.save()
      expect(Member.all()).to(eq([test_member]))
    end
  end

  describe(".all") do
    it("is empty at first") do
      expect(Member.all()).to(eq([]))
    end
  end

  describe(".clear") do
    it("empties out all of the saved members") do
      Member.new("Jon Doe", "Ruby", 3).save()
      Member.clear()
      expect(Member.all()).to(eq([]))
    end
  end


  describe("#id") do
    it("returns the id of the member") do
      test_member = Member.new("Jon Doe", "Ruby", 3)
      test_member.save
      expect(test_member.id()).to(eq(1))
    end
  end




end
