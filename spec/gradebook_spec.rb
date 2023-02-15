require './lib/gradebook'
require './lib/course'
require './lib/student'
require 'rspec'

RSpec.describe do
  
  it 'exists' do
    gradebook1 = Gradebook.new("Tom")
    
    expect(gradebook1).to be_an_instance_of(Gradebook)
  end
  
  it 'checks instructor and courses' do
    gradebook1 = Gradebook.new("Tom")
    
    expect(gradebook1.instructor).to eq("Tom")
    expect(gradebook1.courses).to eq([])
  end
  
  it 'adds a course' do
    gradebook1 = Gradebook.new("Tom")
    
    expect(gradebook1.add_course("Science")).to eq(["Science"])
  end
  
  it 'lists all students' do
    gradebook1 = Gradebook.new("Tom")
    student1 = Student.new({name: "Morgan", age: 21})
    student2 = Student.new({name: "Jordan", age: 29})
    course = Course.new("Calculus", 2)
    course.enroll(student1)
    course.enroll(student2)
    gradebook1.add_course("Calculus")

    expect(gradebook1.list_all_students).to eq({course => [student1, student2]})
    

  end

  it 'checks students below threshold' do
    gradebook1 = Gradebook.new("Tom")
    student1 = Student.new({name: "Morgan", age: 21})
    student2 = Student.new({name: "Jordan", age: 29})
    student3 = Student.new({name: "Tim", age: 27})
    course = Course.new("Calculus", 2)
    course.enroll(student1)
    course.enroll(student2)
    course.enroll(student3)
    gradebook1.add_course("Calculus")

    expect(course.students_below_threshold).to eq([student3])
  end 
end