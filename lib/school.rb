require 'pry'

class School

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  attr_reader :roster

  def add_student(name, grade)
    @roster.has_key?(grade) ? @roster[grade]<<name : @roster[grade]=[name]
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each {|grade, names| names.sort!}
  end
end
