# algorithm 2.rb
require 'awesome_print'
# first pair up all the masters and beginnners
# zip until we hit intermediate

# then once we hit intermediate start to revers the collections so that each group can be evenly distributed.

# you can see every students category and ratings for each category.

#assumptions, your assumptions that the arrays will be given to you that they are sorted.
# you're working with a

# turn each rating into a number that you can work with.

#this method will return an array of paired skill levels
#_______________________________

# students are sorted by how many stars they have

# should accept a list of all students tied to an event
# iterate through each category and assign points
def calculate_student_points (all_students)
    all_students.each do |student|
      total = 0
      student.categories.each do |category|
      case category.rating
      when "advanced"
        total += 3
      when "intermediate"
        total += 2
      when "beginner"
        total += 1
      end
    end
    student.update_attributes(points: total)
  end
end



def evaluate_skill_points(students)
    high = []
    mid = []
    low = []
  students.each do |student|
    student_points = student.points

    if [*12..15].include?(student_points)
      high << student
    elsif [*1..8].include?(student_points)
      low << student
    else
      mid << student
    end
  end


  p "*"*80
  ap high.length
  p "*"*80
  ap low.length
  p "*"*80
  ap mid.length


  groups = Array.new(10){ Array.new() }



end

def zip_prep
#before zipping
# i want to sort the high array by skill_points with students names
  # highest to lowest
# i want to sort the low array by skill_ points with students names
  # lowest to highest
end

# master_dis_arr = []

#you need a guard to check for length array for proper zipping, if not it's going to get messy below. (btw you are already trying, its not good)

# def zip_low_high (high_array, low_array)
#   #here we are zipping the high and low array, so the it creates an array of pair students.
#   if high_array.length == low_array.length
#     skill_bal = high_array.zip(low_array)
#   elsif high_array.length > low_array.length
#     high_array.length - low_array.length
#     # drop the remainder in the longer array
#   else low_array.length < high_array.length
#     low_array.length - high_array.length
#     # drop the remainder in the longer array
#   end
#   master_dis_arr << skill_bal
# end

# replace_with_numbers(array)

# ultimately you have an array of pairs
# and an array of singles (intermediate)
# then we can use this push into a rotation of the number of groups that we have.



# a = [
#   person_2  = ["A","A","A"],
#   person_19 = ["A","A","A"]
# ]

# aa = [
#   person_17 = ["A","B","A"],
#   person_12 = ["A","A","B"]
# ]

# a = [
#   person_20 = ["B","A","B"],
#   person_18 = ["I","B","A"],
#   person_8 = ["I","B","A"],
#   person_7 = ["A","I","B"],
#   person_9 = ["A","B","I"],
#   person_4 = ["B","I","A"],
#   person_6 = ["A","B","I"]
#   person = ["B","B","A"],
#   person = ["B","A","B"],
#   person = ["B","A","I"],
#   person = ["B","A","B"]
# ]

# iii = [person 3 = ["I","I","I"]]

# ii = [person 13 = ["I","I","B"]]

# i = [person 11 = ["B","B","I"]]

# bbb = [
#   [person 1 =  ["B","B","B"]],
#   [person 15 = ["B","B","B"]]
# ]
