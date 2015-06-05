class Team
  attr_reader (:name)
  @@teams = []

  define_method(:initialize) do |name|
    @name = name
    @id = @@teams.length().+(1)
    @team_members = []

  end

  define_method(:id) do
    @id
  end

  define_method(:team_members) do
    @team_members
  end




end
