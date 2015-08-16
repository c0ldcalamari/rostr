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
  user = Organizer.find_by(username: params[:username])

  if user && user.password == params[:password]
    login(user)
    redirect "/user/#{user.id}"
  else
    @errors = {login_error: "Username and/or password are incorrect. Try Again."}
    erb :"/"
  end
end

#creates a new organizer
get '/create' do
  erb :"/organizers/create"
end

#creates a user to database
post '/user' do
  user = Organizer.create(username: params[:username], password: params[:password])
  login(user)
  redirect "/user/#{user.id}"
end

# *********************
# organizer dashboard profile page
get '/user/:id' do
  if logged_in?
    @events = Event.where(organizer_id: params[:id])
    erb :"organizers/show"
  else
    redirect '/'
  end
end

post '/user/:id/create' do
  event = Event.create(title: params[:title], active: false)

  event.categories.create(name: params[:subject1], category: 1)
  event.categories.create(name: params[:subject2], category: 2)
  event.categories.create(name: params[:subject3], category: 3)
  event.categories.create(name: params[:subject4], category: 4)
  event.categories.create(name: params[:subject5], category: 5)

  redirect '/user/#{current_user.id}'
end












