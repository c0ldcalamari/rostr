# login for the organizer
post '/sessions' do
  organizer = Organizer.find_by(email: params[:email])
  if organizer && organizer.password == params[:password]
    login(organizer)
    redirect "/organizer/#{organizer.id}"
  else
    @errors = {login_error: "Email and/or password are incorrect. Try Again."}
    erb :"/"
  end
end

post '/organizers' do
  organizer = Organizer.create(name: params[:name], email: params[:email], password: params[:password])
  login(organizer)
  redirect "/organizer/#{organizer.id}"
end