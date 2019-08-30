class CourseModulesController < ApplicationController
    
    before_action :get_module
    before_action :get_course, only: [:edit, :update]
    
    def show
    end

    def edit
    end

    def update

        if @mod.update_attributes(module_params)
            flash[:success] = "Module updated"
            redirect_to course_course_module_path
        else
            byebug
            puts '##################'
            puts @mod.errors.full_messages
            puts '##################'
            render 'edit'
        end
    end

    private

        def get_course
            @course = Course.find(params[:course_id])
        end

        def get_module
            @mod = CourseModule.find(params[:id])
        end

        def module_params
            params.require(:course_module).permit(:title, :description, :video_id)
        end
end
