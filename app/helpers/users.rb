helpers do

  def logged_in?
    !!session[:user_id]
  end

  def login(user)
    session[:user_id] = user.id
  end

  def logout!
    session[:user_id] = nil
  end

  def current_user
    @user ||= Organizer.find_by(id: session[:user_id]) if session[:user_id]
  end


end
