class School
  attr_accessor :roster

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def add_student(name, grade)
    if roster[grade]
      roster[grade] << name
    else
      roster[grade] = []
      roster[grade] << name
    end
  end

  def grade(num)
    roster[num]
  end

  def sort
    roster.each_value { |students| students.sort! }
  end
end
