class Member
  attr_reader(:name)
  @@members = []


  define_method(:initialize) do |name|
    @name = name
    # @skill = skill
    # @exp = years_of_experience
    # @id = @@members.length().+(1)


  end








end
