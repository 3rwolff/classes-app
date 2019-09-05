class SectionsController < ApplicationController

    before_action :get_course
    before_action :get_module
    before_action :get_section, except: [:new, :create]

    def show
    end

    def new
        @section = Section.new
        # here we explicitly call a template because we are never actually vewing the show page of a section like we do for courses and modules
        render 'course_modules/new_section'
    end

    def create
        new_params = section_params
        @section = Section.new( { title: new_params[:title],
                                  description: new_params[:description],
                                  course_module_id: params[:course_module_id] })

        puts '###################'
        puts @section.title
        puts @section.description
        puts @section.course_module_id
        puts '###################'
        if @section.save
            flash[:success] = "Section created"
            redirect_to course_course_module_path( id: @mod.id ) #pass and id to go back to a specific module
        else
            render 'edit'
        end
    end

    def edit
        # here we explicitly call a template because we are never actually vewing the show page of a section like we do for courses and modules
        render 'course_modules/edit_section'
    end

    def update
        if @section.update_attributes(section_params)
            flash[:success] = "Section updated"
            redirect_to course_course_module_path( id: @mod.id ) #pass and id to go back to a specific module
        else
            render 'edit'
        end
    end

    def destroy 
        @section.destroy
        redirect_to course_course_module_path( id: @mod.id )
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
