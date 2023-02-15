class Course
  attr_reader :students
  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @students = []
    @full = false
    @students_below_threshold = []

    
  end
  def name
    @name
  end
  def capacity
    @capacity
  end
  def students
    @students
  end
  def full?
    @full
  end
  def students_below_threshold
    @students_below_threshold
  end
  def enroll(student)
    if @students.size != @capacity
      @students << student
      
    else
      @full = true
      @students_below_threshold << student
    
    end
      
  end

  

end
