class CoursesController < ApplicationController

    def index
        @courses = Course.all
    end

    def show
        @course = Course.find(params[:id]) 
        @modules = @course.CourseModule    
    end

    def edit
        @course = Course.find(params[:id]) 
    end

    def update
        @course = Course.find(params[:id]) 
        if @course.update_attributes(course_params)
          flash[:success] = "Course updated"
          redirect_to @course
        else
          render 'edit'
        end
    end

    private


        def course_params
            params.require(:course).permit(:name, :description, :main_video_id)
        end

end
