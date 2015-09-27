# controller for organizer
# homepage
get '/' do
  if logged_in?
    redirect "/user/#{current_user.id}"
  else
    erb :"organizers/home"
  end
end

# events students can see

# login for the organizer
post '/sessions' do
  @user = Organizer.find_by(username: params[:username])

  if @user && @user.password == params[:password]
    login(@user)
    redirect "/user/#{@user.id}"
  else
    @errors = {login_error: "Username and/or password are incorrect. Try Again."}
    erb :"/organizers/home"
  end
end

#creates a new organizer
get '/create' do
  erb :"/organizers/create"
end

#creates a user to database
post '/user' do
  @user = Organizer.create(username: params[:username], password: params[:password])
  login(user)
  redirect "/user/#{user.id}"
end

# *********************
# organizer dashboard profile page
get '/user/:id' do
  if logged_in?
    @user = Organizer.find(current_user.id)
    @events = Event.where(organizer_id: params[:id])
    erb :"organizers/show"
  else
    redirect '/'
  end
end

# user creates an event
post '/user/:id/create' do
  event = current_user.events.create(title: params[:title], created: true)
  event.update_attributes(sub1: params[:subject1])
  event.update_attributes(sub2: params[:subject2])
  event.update_attributes(sub3: params[:subject3])
  event.update_attributes(sub4: params[:subject4])
  event.update_attributes(sub5: params[:subject5])

  redirect "/user/#{current_user.id}/event/#{event.id}"
end

# START THE EVENT AND SORT STUDENTS
# shows the student list and start event button
get '/user/:user_id/event/:event_id' do
  @students = Student.where(event_id: params[:event_id])
  @event = Event.find_by(id: params[:event_id])
  @groups = Group.where(event_id: params[:event_id])

  calculate_student_points(@students)
  evaluate_skill_points(@students)

  erb :"organizers/start"
end

post '/user/:user_id/event/:event_id/groups/create' do
  @students = Student.where(event_id: params[:event_id])
  @event = Event.find_by(id: params[:event_id])
  # sorted_students = advance_sorter(@students)
  #brenda's algorithm
  redirect "/user/#{current_user.id}/event/#{params[:event_id]}/groups"
end

# changes inactive event to ACTIVE
post '/user/:user_id/event/:event_id' do
  @event = Event.find_by(id: params[:event_id])
  event = Event.find(params[:event_id])
  event.update_attributes(started: true)
  event.update_attributes(created: false)
  @groups = Group.where(event_id: params[:event_id])

  redirect "/user/#{params[:user_id]}"
end

# redirect to the admin group page
get '/user/:user_id/event/:event_id/groups' do
  @event = Event.find_by(id: params[:event_id])
  @groups = Group.where(event_id: params[:event_id])
  @students = Student.where(event_id: params[:event_id])
  erb :"events/groups"
end

# logout
get '/logout' do
  logout!
  redirect '/'
end







