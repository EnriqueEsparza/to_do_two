require('sinatra')
require('sinatra/reloader')
require('./lib/to_do')
also_reload('lib/**/*.rb')

get('/') do
  @tasks = Task.all
  erb(:index)
end

 get('/tasks') do
   description = params.fetch("description")
   task = Task.new(description)
   task.save
  #  @tasks = Task.all
   redirect back
 end
