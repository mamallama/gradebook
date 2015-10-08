class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include SessionsHelper

  def current_user
  if (user_id = session[:user_id])
    @current_user_user ||= User.find(user_id)
    case @current_user_user.role
    when "teacher"
      @current_user = Teacher.find(teacher_id)
    when "parent"
      @current_user = Parent.find(parent_id)
    when "student"
      @current_user = Student.find(student_id)
    end
  end
end
end
