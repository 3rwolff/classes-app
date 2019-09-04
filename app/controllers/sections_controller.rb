class SectionsController < ApplicationController

    before_action :get_course
    before_action :get_module
    before_action :get_section

    def show
    end

    def edit
        @section = Section.find(params[:id])
        puts "###############"
        puts @section.title
        puts "###############"
        # here we explicitly call a template because we are never actually vewing the show page of a section like we do for courses and modules
        render 'course_modules/edit_section'
    end

    def update
        if @section.update_attributes(section_params)
            flash[:success] = "Section updated"
            redirect_to course_course_module_path
        else
            render 'edit'
        end
    end

    private

        def get_section
            @section = Section.find(params[:id])
        end

        def get_course
            @course = Course.find(params[:course_id])
        end

        def get_module
            @mod = CourseModule.find(params[:course_module_id])
        end

        def section_params
            params.require(:section).permit(:title, :description)
        end

end
