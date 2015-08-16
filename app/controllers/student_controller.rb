get '/events' do
  @events = Event.all
  erb :"events/index"
end

get '/events/:id' do
  @event = Event.find_by(id: params[:id])
  erb :"/events/show"
end

post '/events/:event_id/groups/:group_id' do
  @group = Group.find_by(id: params[:group_id])
  @event = Event.find_by(id: params[:event_id])
  emails = []
  @group.students.each do |student|
    emails << student.password
  end
  if emails.include?(params[:password])
    redirect "/events/#{params[:event_id]}/groups/#{params[:group_id]}"
  else
    @incorrect_password = "Incorrect Password"
    erb :"/events/show"
  end
end

get '/events/:event_id/groups/:group_id' do
  @group = Group.find_by(id: params[:group_id])
   erb :"groups/show"
end
