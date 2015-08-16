# psudeocode

# input: array of all_categories associated with event 1
# output: array of ten populated arrays of student objects

# select categories with subject equal to 1 from all_categories
# drop those categories in a array
# repeat for all five subjects

# create a collection of ten empty arrays
# loop through each array of this collection
# until the empty array size is equal to ten students
#   drop advance students from subject1 into this array
#   if not enough advance students, drop intermediate students
# After the first empty array size is equal to ten,
# move onto the next empty array an populate with subject2 advance students

# Creates an array of five empty arrays
require "awesome_print"

def advance_sorter(student_event)
  students = student_event
  advance_sorted= Array.new(6){ Array.new() }
  # ap students[0].categories

  students.each_with_index do |student,i|
    stars = []

  student.categories.each do |cat|
    if cat.rating == "advanced"
      stars << cat
    end
  end

    advance_sorted[0] << student if stars.size == 5
    advance_sorted[1] << student if stars.size == 4
    advance_sorted[2] << student if stars.size == 3
    advance_sorted[3] << student if stars.size == 2
    advance_sorted[4] << student if stars.size == 1
    advance_sorted[5] << student if stars.size == 0

  end
  return advance_sorted
end








