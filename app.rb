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
  @team_members = Member.all()
  erb(:members)
end

post('/:id') do
  name = params.fetch('name')
  skill = params.fetch('skill')
  years = params.fetch('years')
  Member.new(name, skill, years).save()
  @team_members = Member.all()
  erb(:members)
end
