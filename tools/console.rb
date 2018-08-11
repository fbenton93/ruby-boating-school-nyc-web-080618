require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

student1 = Student.new("John")
student2 = Student.new("Bob")
student3 = Student.new("Raymona")

instructor1 = Instructor.new("Capt. Philips")
instructor2 = Instructor.new("Capt. Rogers")
instructor3 = Instructor.new("Capt. Benton")

#student,test_name,test_status,instructor

test1 = BoatingTest.new(student1,"test1","passed",instructor1)
test2 = BoatingTest.new(student1,"test2","failed",instructor1)
test3 = BoatingTest.new(student1,"test3","passed",instructor2)
test4 = BoatingTest.new(student2,"test4","passed",instructor3)
test5 = BoatingTest.new(student3,"test5","failed",instructor3)













binding.pry
0 #leave this here to ensure binding.pry isn't the last line
