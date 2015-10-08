class SessionsController < ApplicationController
  def new
  end

  def create
    if request.post?
      @teacher = Teacher.find_by_email(params[:session][:email])
      @parent = Parent.find_by_email(params[:session][:email])
      @student = Student.find_by_email(params[:session][:email])
      if
        teacher && teacher.authenticate(params[:session][:password]) #log teacher in
        session[:user_id] = teacher.id
        redirect_to dashboard_path
      # elsif
      #   parent && parent.authenticate(params[:session][:password]) #log parent in
      #   session[:logged_in_parent] = true
      #   redirect_to login_path
      # elsif
      #   student && student.authenticate(params[:session][:password]) #log student in
      #   session[:logged_in_teacher] = true
      #   redirect_to login_path
      else
        #create error msg
        redirect_to login_path, alert: 'Sorry, try again.'
      end
    end
  end

  def destroy
  end
end
