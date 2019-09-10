class ProjectsController < ApplicationController

  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
    @students = ProjectStudent.where(project_id: params[:id])
  end
  
end
