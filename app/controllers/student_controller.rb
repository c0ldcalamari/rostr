require_relative 'config'

get '/events' do
  # separate active and inactive events
  @created = Event.where(created: true)
  @started = Event.where(started: true)
  @finished = Event.where(finished: true)
  erb :"events/index"
end

get '/events/:id' do
  @event = Event.find_by(id: params[:id])
  erb :"/events/show"
end

post '/events/:event_id/groups/:group_id' do
  @group = Group.find_by(id: params[:group_id])
  @event = Event.find_by(id: params[:event_id])

  redirect "/events/#{params[:event_id]}/groups/#{params[:group_id]}"

end

get '/events/:event_id/groups/:group_id' do
  @event = Event.find_by(id: params[:event_id])
  @group = Group.find_by(id: params[:group_id])
   erb :"groups/show"
end

# student sign up page
get '/events/:event_id/category' do
  @event = Event.find_by(id: params[:event_id])
  erb :"/events/signup"
end

post '/events/:event_id/category' do
  Pusher['admin-page'].trigger('user-signup', {
    message: params[:name]
  })
  event = Event.find_by(id: params[:event_id])
  student = event.students.create(name: params[:name], email: params[:email])
  student.categories.create(name: event.sub1, rating: params[:rate1], subject: 1, event_id: params[:event_id])
  student.categories.create(name: event.sub2, rating: params[:rate2], subject: 2, event_id: params[:event_id])
  student.categories.create(name: event.sub3, rating: params[:rate3], subject: 3, event_id: params[:event_id])
  student.categories.create(name: event.sub4, rating: params[:rate4], subject: 4, event_id: params[:event_id])
  student.categories.create(name: event.sub5, rating: params[:rate5], subject: 5, event_id: params[:event_id])

  redirect '/success'
end

get '/success' do
  erb :"events/success"
end

