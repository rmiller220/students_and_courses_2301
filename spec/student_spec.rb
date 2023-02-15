require './lib/student'
require 'rspec'

RSpec.describe do
  
  it 'exists' do
    student = Student.new({name: "Morgan", age: 21})
    
    expect(student).to be_an_instance_of(Student)
  end

  it 'checks name, age, scores' do
    student = Student.new({name: "Morgan", age: 21})
    
    expect(student.name).to eq("Morgan")
    expect(student.age).to eq(21)
    expect(student.scores).to eq([])
  end
  
  it 'logs scores' do
    student = Student.new({name: "Morgan", age: 21})
    student.log_score(89)
    student.log_score(78)
    
    expect(student.scores).to eq([89, 78])
  end
  
  it 'grades scores' do
    student = Student.new({name: "Morgan", age: 21})
    student.log_score(89)
    student.log_score(78)

    expect(student.grade).to eq(83.5)
  end


end