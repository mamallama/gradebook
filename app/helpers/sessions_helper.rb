module SessionsHelper
  def log_in(user) #logs in the user
    teacher_id = user.id
  end

  def current_user #returns the current logged-in user.
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def logged_in?
    !current_user.nil?
  end

end
