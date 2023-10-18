#RESTRUCTURING IN PROGRESS
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
    term
    def initialize()
        term = Array.new
    end
    def add_course(course, max_count)
        if term[quarter].class_count > max_max {
            return error;
        }else{
            term[quarter].add_course(course);
        }
        
    end
    
    def remove_course(course, quarter)
        term[quarter].remove_course(course);
    end

end

class Quarter
    classes
    
    def initialize()
        classes = Array.new
    end
    def class_count()
        classes.size
    end
    def add_course(course)
        classes.push(course)
    end
    
    def remove_course(course)
        classes.remove(course)
    end

end
class Course
    id
    name
    
end