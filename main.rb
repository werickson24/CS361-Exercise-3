class Student

    MAX_COURSES = 5
    schedule
    
    def initialize()
        schedule = Schedule.new
    end
    
    def add_course(course, max = MAX_COURSES)
        schedule.add_course(course, max)
    end
    
    def remove_course(course)
        schedule.remove_course(course)
    end
    
end

class Schedule

    quarters
    
    def initialize()
        quarters = [Quarter.new, Quarter.new, Quarter.new, Quarter.new]
    end
    
    def add_course(course, max_count)
        current_quarter = course.quarter;
        if quarters[current_quarter].can_add_course(max_count) {
            quarters[current_quarter].add_course(course)
        }else{
            puts "Maximum number of courses reached"
            # throw error
        }
    end
    
    def remove_course(course)
        current_quarter = course.quarter;
        quarters[current_quarter].remove_course(course)
    end

end

class Quarter

    classes
    
    def initialize()
        classes = Array.new
    end
    
    def add_course(course)
        classes.push(course)
    end
    
    def remove_course(course)
        classes.delete(course)
    end
    
    def class_count()
        classes.size
    end
    
    def can_add_course(max_count)
        max_count > class_count
    end

end

class Course

    def initialize(name, quarter)
        @name = name
        @quarter = quarter
        # More info in the future...
    end
    
end