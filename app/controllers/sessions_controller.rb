class SessionsController < ApplicationController
  def new

  end

#updated if statement of doom. Think I need something with case. LOOK INTO.
  def create
    case params[session][:user_id]
    when "teacher"
      teacher = Teacher.find_by_email(set_params[:email])
        if teacher && teacher.authenticate(set_params[:password])
          session[:user_id] = teacher.id

          redirect_to teachers_path, notice: "Logged in."
        else
          redirect_to login_path, alert: "Login failed. Invalid email/password combination."
        end
    when "student"
      student = Student.find_by_email(set_params[:email])
      if student && student.authenticate(set_params[:password])
        session[:user_id] = student.id
        redirect_to grades_path, notice: "Logged in."
      else
        redirect_to login_path, alert: "Login failed. Invalid email/password combination."
      end
    when "parent"
      parent = Parent.find_by_email(set_params[:email])
      if parent && parent.authenticate(set_params[:password])
        session[:user_id] = parent.id
        redirect_to grades_path, notice: "Logged in."
      else
        redirect_to login_path, alert: "Login failed. Invalid email/password combination."
      end
    end
    session[:account_type] = params[:sessions][:account_type]
  end

  def destroy
    session[:user_id] = nil
    session[:account_type] = nil
    redirect_to root_path, alert: "You have been logged out."
  end

  private

  def set_params
    params.require(:sessions).permit(:name, :email, :password, :account_type)
  end
end
