require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/team')
require('./lib/member')

get('/') do
  @teams = Team.all()
  erb(:index)
end

post('/') do
  name = params.fetch('name')
  Team.new(name).save()
  @teams = Team.all()
erb(:index)
end

get('/:id') do
  id = params.fetch("id").to_i
  @team = Team.find(id)
  erb(:members)
end

post('/:id') do

  name = params.fetch('name')
  skill = params.fetch('skill')
  years = params.fetch('years')
  @team_member = Member.new(name, skill, years)
  @team_member.save()
  @team = Team.find(params.fetch('team_id').to_i())
  @team.add_member(@team_member)
  erb(:members)
end
