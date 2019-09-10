# Users
User.create!( name: "Ricky",
              email: "ricky@bigsouthernsoftware.com",
              password:              "ffffff",
              password_confirmation: "ffffff")

(0..4).each do
    name = Faker::Name.first_name
    User.create!( name: name,
                  email: "#{name}@foo.com",
                  password:              "ffffff",
                  password_confirmation: "ffffff")
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
Project.create(course_id: 1, semester_id: 1)

Project.create(course_id: 2, semester_id: 2)

Project.create(course_id: 3, semester_id: 3)

Project.create(course_id: 1, semester_id: 4)

Project.create(course_id: 2, semester_id: 5)

Project.create(course_id: 3, semester_id: 6)