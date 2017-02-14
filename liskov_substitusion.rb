# If S is a subtype of T, then objects of type T may be replaced with objects of type S
# (i.e., objects of type S may substitute objects of type T)
# without altering any of the desirable properties of that program (correctness, task performed, etc.)

#There is a class Bird. And there are two objects, obj1 and obj2.
#The class of obj1 is Duck which is a child-class of Bird.
#Let's say we discover that obj2's class is Pigeon,
#which is also a child-class of Bird.
#Liskov substitution principle states that in this situation,
#when obj2 has a type of Bird sub-class and obj1 which is of
#class Duck which is also a sub-type of Bird,
#I should be able to treat obj1 and obj2 in the same way - as Birds.


class Person
  def greet
    puts "Hey there!"
  end
end

class Student < Person
  def years_old(age)
    return "I'm #{age} years old."
  end
end

person  = Person.new
student = Student.new

# What LSP says is if I know the interface of person,
# I need to be able to guess the interface of student because
# the Student class is a subtype of the Person class.
student.greet
# returns "Hey there!"
