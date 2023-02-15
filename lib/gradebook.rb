class Gradebook

  def initialize(teacher)
    @teacher = teacher
    @courses = []
  end

  def instructor
    @teacher
  end

  def courses
    @courses
  end

  def add_course(type)
    @courses << type
  end

  def list_all_students
    course_student_hash = {}
    @courses.each do |course|
      course_student_hash[course] = course.students
    end
    course_student_hash
  end

end
