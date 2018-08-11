class Instructor

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end


  ## What if we wanted to create a scenario in which only the teacher in that boating test1
  ## can fail the student? We might add to the conditional below that:
  ## test_instance.instructor.name == self.name


  def pass_student(student_name,test_name)
    BoatingTest.all.each do |test_instance|
      if test_instance.student.name == student_name && test_instance.test_name == test_name
        test_instance.test_status = "passed"
      end
    end
  end

  def fail_student(student_name,test_name)
    BoatingTest.all.each do |test_instance|
      if test_instance.student.name == student_name && test_instance.test_name == test_name
        test_instance.test_status = "failed"
      end
    end
  end

  def student_grade_percentage(student_name)
    stud = BoatingTest.all.select do |test_instance|
      test_instance.student.name == student_name
    end

    passes = 0
    stud.each do |test_instance|
      if test_instance.test_status == "passed"
        passes += 1
      end
    end

    (passes.to_f / stud.length) * 100
  end






end
