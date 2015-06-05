class Member
  attr_reader(:name, :skill, :years)
  @@members = []


  define_method(:initialize) do |name, skill, years|
    @name = name
    @skill = skill
    @years = years
    @id = @@members.length().+(1)
  end

  define_method(:save) do
    @@members.push(self)
  end

  define_singleton_method(:all) do
    @@members
  end

  define_singleton_method(:clear) do
    @@members = []
  end


  # define_method(:id) do
  #   @id
  # end








end
