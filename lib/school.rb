# code here!
require 'pry'

class School
  attr_reader :roster
  
  def initialize(name, roster = { })
    @name = name
    @roster = roster
  end
  
    
  def add_student(name, grade)
    @grade = grade
    #if the roster for a grade hasn't been created yet, we create it here
    if @roster[grade] == nil
      #initializing the array of names for the grade
      @roster[grade] = [ ]
      #adding the name to the array for that grade
      @roster[grade] << name
    #if the roster for the grade exits, then we just need to add the student's name
    elsif @roster[grade] != nil
      @roster[grade] << name
    end
  end
  
  def grade(year)
    @grade = year
    #returning the array of names for the grade typed in
    return @roster[@grade]
  end
  
  def sort
    @roster = @roster.sort.to_h
    @roster[@grade].sort
    puts "#{@roster} at the end"
    

  end
  
  
end