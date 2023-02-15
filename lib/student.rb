class Student
attr_reader :hash
def initialize(hash)
  @name = hash[:name]
  @age = hash[:age]
  @scores = []
end

  def name
    @name
  end
  def age
    @age
  end
  def scores
    @scores
  end
  def log_score(num)
    @scores << num
  end
  def grade
  sum = scores.sum(0.0)
  average = sum / scores.size
  average
  end

end
