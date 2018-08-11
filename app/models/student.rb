class Student

  attr_reader :name

  @@all = []

  def initialize(first_name)
    @name = first_name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_boating_test(test_name,test_status,instructor)
    BoatingTest.new(self,test_name,test_status,instructor)
  end

  def self.find_student(student_name)
    Student.all.select do |student|
      student.name == student_name
    end
  end

end
