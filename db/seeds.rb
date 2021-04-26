# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

programdirectors = [{:Name => 'Dr. V', :CWID => '10619830',:program_directors => '1' }]
programdirectors.each do |programdirector|
  Programdirector.create!(programdirector)
end 


courses = [{:prefix => 'CSCI', :name => 'Data Modeling', :number => '601', :section => '01'},
    	 {:prefix => 'CSCI', :name => 'Foundations of Software Engineering', :number => '602', :section => '01'},
    	 {:prefix => 'CSCI', :name => 'Object-Oriented Design Patterns', :number => '603', :section => '01'},
    	 {:prefix => 'CSCI', :name => 'Distributed Computer Systems Architecture', :number => '604', :section => '01'},
       {:prefix => 'CSCI', :name => 'Applied Algorithms', :number => '605', :section => '01'},
    	 {:prefix => 'CSCI', :name => 'Advanced Algorithms', :number => '612', :section => '01'},
    	 {:prefix => 'CSCI', :name => 'Advanced Computer Architecture', :number => '616', :section => '04'},
    	 {:prefix => 'CSCI', :name => 'Advanced Operating Systems', :number => '618', :section => '01'},
    	 {:prefix => 'CSCI', :name => 'Automate Theory', :number => '631', :section => '01'},
    	 {:prefix => 'CSCI', :name => 'Principles of Programming Languages', :number => '632', :section => '01'},
    	 {:prefix => 'CSCI', :name => 'Principles of Computer Security', :number => '633', :section => '01'},
    	 {:prefix => 'CSCI', :name => 'Project Change and Management', :number => '634', :section => '01'},
    	 {:prefix => 'CSCI', :name => 'Advanced Cybersecurity', :number => '641', :section => '01'},
    	 {:prefix => 'CSCI', :name => 'Software Systems Design and Implementation', :number => '656', :section => '01'}
    	 ]
courses.each do |course|
  Course.create!(course)
end 