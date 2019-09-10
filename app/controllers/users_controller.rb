class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @role = Role.find( UserRole.where( user_id: @user.id ).first.role_id )
    @teacher_projects = ProjectTeacher.where(user_id: params[:id])
    @student_projects = ProjectStudent.where(user_id: params[:id])
  end
end
