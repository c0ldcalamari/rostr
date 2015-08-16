get '/events' do
  @events = Event.all
  erb :"events/index"
end

get '/events/:id' do
  @event = Event.find_by(id: params[:id])
  erb :"/events/show"
end

# post '/events/:id' do

#   if
  # redirect 'events/#{params[:id]}/groups/:group_id'
#   else

#   end
# end


post '/events/:event_id/groups/:group_id' do
  @group = Group.find_by(id: params[:group_id])
  redirect "/events/#{params[:event_id]}/groups/#{params[:group_id]}"
end

get '/events/:event_id/groups/:group_id' do
  @group = Group.find_by(id: params[:group_id])
   erb :"groups/show"
end
