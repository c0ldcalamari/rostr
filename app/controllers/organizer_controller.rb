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
get '/events' do
  erb :"events/show"
end

# login for the organizer
post '/sessions' do
  user = User.find_by(username: params[:username])

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
  user = User.create(username: params[:username], password: params[:password])
  login(user)
  redirect "/user/#{user.id}"
end

# organizer dashboard profile page
get '/user/:id' do
  if logged_in?
    erb :"organizer/show"
  else
    redirect '/'
  end
end
