# Given a grade_hash, student name, and assignment number, return the score
# for that student and assignment. Note that Ruby counts arrays from 0, but
# we are referring to them as 1-10.

def assignment_score(hash, name, assign_num)
    name_thing = hash[name]
    assign_num = (assign_num - 1)
    assign_num_thing = name_thing[assign_num]
    
end

# Given a grade_hash and assignment number, return all scores for that
# assignment. Note that Ruby counts arrays from 0, but we are referring to
# them as 1-10.

def assignment_scores(hash, assign_num)
    assign_num = (assign_num - 1)
    hash.map do |key, value|
        value[assign_num]
    end  
end

# Given a grade_hash and assignment number, return the average score for that
# assignment. Note that Ruby counts arrays from 0, but we are referring to
# them as 1-10.

def assignment_average_score(hash, assign_num)
    #call assignment_scores to get an array of the scores using the args
    grade_array = assignment_scores(hash, assign_num)
    #calculate and return the average of the array
    sum = grade_array.reduce(0) { |x, y| x + y }
    average = sum/grade_array.length

end


# Return a hash of students and their average score.
# TIP: To convert an array like [[:indiana, 90], [:nevada, 80]] to a hash,
# use .to_h. Also look at Hash#transform_values.

def averages(hash)
    grade_array = hash.map do |key, value|
        sum = grade_array.reduce(0) { |x, y| x + y }
        average = sum/grade_array.length
        [key, sum]
    end
    grade_array.to_h
end


# Return a letter grade for a numerical score.
# 90+ => A
# 80-89 => B
# 70-79 => C
# 60-69 => D
# < 60 => F

# Return a hash of students and their final letter grade, as determined
# by their average.


# Return the average for the entire class.


# Return an array of the top `number_of_students` students.

