require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/team')
require('./lib/member')

get('/') do
  erb(:index)
end
