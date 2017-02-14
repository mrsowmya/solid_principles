#single responsibility there should never be more than one reason for a class to change

class Student
  attr_accessor :first_term_home_work, :first_term_test, :first_term_paper
  attr_accessor :second_term_home_work, :second_term_test, :second_term_paper

  def first_term_grade
    (first_term_home_work + first_term_test + first_term_paper) / 3
  end

  def second_term_grade
    (second_term_home_work + second_term_test + second_term_paper) / 3
  end
end

#It voilates the single responsibilty principle
#because class Student contains the logic that calculates the average grade for each term

#Recator code
class Student
  def initailze
    @terms = [
      Grade.new(:first),
      Grade.new(:second)
    ]
  end

  def first_term_grade
    term(:first).grade
  end

  def second_term_grade
    term(:second).grade
  end

  private

  def term(reference)
    @terms.find {|term| term.name == reference}
  end
end


class Grade
  attr_reader :name, :home_work, :test, :paper

  def initialize(name)
    @name = name
    @home_work = home_work
    @test = @test
    @paper = @paper
  end

  def grade
    (home_work + test + paper) / 3
  end
end
