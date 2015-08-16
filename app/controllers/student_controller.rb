get '/events' do
  @events = Event.all
  erb :"events/index"
end

get '/events/:id' do
end

get '/events/:id/create' do
end
