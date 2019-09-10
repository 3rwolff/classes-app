# Users
User.create!( name: "Ricky",
              email: "ricky@bigsouthernsoftware.com",
              password:              "ffffff",
              password_confirmation: "ffffff")

User.create!( name: "Fox",
              email: "fox@bss.com",
              password:              "ffffff",
              password_confirmation: "ffffff")

(0..20).each do
    name = Faker::Name.first_name
    User.create!( name: name,
                  email: "#{name}@foo.com",
                  password:              "ffffff",
                  password_confirmation: "ffffff")
end

# Roles
Role.create!(name: "Student")
Role.create!(name: "Teacher")
Role.create!(name: "Admin")

# User Roles
UserRole.create!(user_id: 1, role_id: 2) # set Ricky as a teacher
UserRole.create!(user_id: 2, role_id: 2) # set Fox as a teacher

User.where("id is not 1").each do |user| # set the rest of the users as students
    UserRole.create!(user_id: user.id , role_id: 1)
end

# Courses
Course.create!( name: "Breakout",
                main_video_id: "breakout.png",
                description: Faker::Lorem.paragraph(sentence_count: 10))
                
Course.create!( name: "Asteroids",
                main_video_id: "asteroids.png",
                description: Faker::Lorem.paragraph(sentence_count: 10))

Course.create!( name: "Pong",
                main_video_id: "pong.png",
                description: Faker::Lorem.paragraph(sentence_count: 10))

# Sections

CourseModule.create!( title: "HTML Canvas",
                      description: Faker::Lorem.paragraph(sentence_count: 10),
                      video_id: "no_photo.png",
                      course_id: 1,
                      sort_by: 1)
                      
CourseModule.create!( title: "Variables & Loops",
                      description: Faker::Lorem.paragraph(sentence_count: 10),
                      video_id: "no_photo.png",
                      course_id: 1,
                      sort_by: 2)

CourseModule.create!( title: "Vectors & Points",
                      description:  Faker::Lorem.paragraph(sentence_count: 10),
                      video_id: "no_photo.png",
                      course_id: 1,
                      sort_by: 3)

# Sections
# just create three sections for each module
(1..3).each do |i|
    Section.create!( title: "Section 1",
                    description: Faker::Lorem.paragraph(sentence_count: 8),
                    course_module_id: i)

    Section.create!( title: "Section 2",
                    description: Faker::Lorem.paragraph(sentence_count: 8),
                    course_module_id: i)

    Section.create!( title: "Section 3",
                    description: Faker::Lorem.paragraph(sentence_count: 8),
                    course_module_id: i)
end

# Semesters
(2019..2020).each do |i|
    Semester.create(season: "Spring", year: i)
    Semester.create(season: "Summer", year: i)
    Semester.create(season: "Fall", year: i)
end

# Projects (a project is a class with a semester, studens and teacher assigned)
Project.create!(course_id: 1, semester_id: 1)
    ProjectTeacher.create!(user_id: 1, project_id: 1)
    User.order("RANDOM()").limit(rand(5..10)).each do |student|
        ProjectStudent.create!(user_id: student.id, project_id: 1)
    end

Project.create!(course_id: 2, semester_id: 2)
    ProjectTeacher.create!(user_id: 1, project_id: 2)
    User.order("RANDOM()").limit(rand(5..10)).each do |student|
        ProjectStudent.create!(user_id: student.id, project_id: 2)
    end

Project.create!(course_id: 3, semester_id: 3)
    ProjectTeacher.create!(user_id: 1, project_id: 3)
    User.order("RANDOM()").limit(rand(5..10)).each do |student|
        ProjectStudent.create!(user_id: student.id, project_id: 3)
    end

Project.create!(course_id: 1, semester_id: 4)
    ProjectTeacher.create!(user_id: 2, project_id: 4)
    User.order("RANDOM()").limit(rand(5..10)).each do |student|
        ProjectStudent.create!(user_id: student.id, project_id: 4)
    end

Project.create!(course_id: 2, semester_id: 5)
    ProjectTeacher.create!(user_id: 2, project_id: 5)
    User.order("RANDOM()").limit(rand(5..10)).each do |student|
        ProjectStudent.create!(user_id: student.id, project_id: 5)
    end

Project.create!(course_id: 3, semester_id: 6)
    ProjectTeacher.create!(user_id: 2, project_id: 6)
    User.order("RANDOM()").limit(rand(5..10)).each do |student|
        ProjectStudent.create!(user_id: student.id, project_id: 6)
    end