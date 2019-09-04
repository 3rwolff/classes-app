# Users
User.create!( 
              email: "ricky@bigsouthernsoftware.com",
              password:              "ffffff",
              password_confirmation: "ffffff")


# Courses
Course.create!( name: "Breakout",
                main_video_id: "breakout.png",
                description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex.")
                
Course.create!( name: "Asteroids",
                main_video_id: "asteroids.png",
                description: "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.n")

Course.create!( name: "Pong",
                main_video_id: "pong.png",
                description: "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.")

# Sections
CourseModule.create!( title: "HTML Canvas",
                      description: "Porttitor rhoncus dolor purus non enim. Orci phasellus egestas tellus rutrum tellus pellentesque eu.",
                      video_id: "no_photo.png",
                      course_id: 1)

CourseModule.create!( title: "Variables & Loops",
                      description: "Arcu non odio euismod lacinia. Pulvinar mattis nunc sed blandit libero volutpat sed cras. Porta lorem mollis aliquam ut porttitor leo a. Tortor posuere ac ut consequat semper viverra nam libero.",
                      video_id: "no_photo.png",
                      course_id: 1)

CourseModule.create!( title: "Vectors & Points",
                      description: "In metus vulputate eu scelerisque felis imperdiet proin. Fermentum et sollicitudin ac orci phasellus. Praesent elementum facilisis leo vel fringilla. ",
                      video_id: "no_photo.png",
                      course_id: 1)

# Sections
Section.create!( title: "Section 1",
                 description: "Orci phasellus egestas tellus rutrum tellus pellentesque eu. Arcu non odio euismod lacinia.",
                 course_module_id: 1)

Section.create!( title: "Section 2",
                 description: "Porta lorem mollis aliquam ut porttitor leo a. Tortor posuere ac ut consequat semper viverra nam libero.",
                 course_module_id: 1)

Section.create!( title: "Section 3",
                 description: "Pulvinar mattis nunc sed blandit libero volutpat sed cras.",
                 course_module_id: 1)