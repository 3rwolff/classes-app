class CourseModulesController < ApplicationController
    before_action :get_module

    def show
    end

    def edit
    end

    def update
        @course = Course.find(@mod.Course_id)
        if @course.update_attributes(course_params)
          flash[:success] = "Module updated"
          redirect_to @mod
        else
          render 'edit'
        end
    end

    private

        def get_module
            @mod = CourseModule.find(params[:id])
        end
end
