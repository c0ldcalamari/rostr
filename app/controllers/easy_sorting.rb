# INPUT: 2D Array of students, grouped by how many stars they have
require 'awesome_print'

def quick_sort(sorted_students)
  groups = Array.new(10){ Array.new() }

  high = sorted_students[0] + sorted_students[1]
  middle = sorted_students[2] + sorted_students[3]
  low = sorted_students[4] + sorted_students[5]

 until high.empty?
    groups.each do |group|
      next if group.size == 5
      break if high.empty?
      group << high.shift
    end
  end


  until low.empty?
    groups.each do |group|
      next if group.size == 5
      break if low.empty?
      group << low.shift
    end
  end


    groups.each do |group|
      next if group.size == 5
      group << middle.shift
    end


  p "hello"
  ap "*"*80
  ap groups
end
