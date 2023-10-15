class Student
    @MAX_COURSES = 5
    @schedule
    def add_course(course, quarter, max)
        schedule.add_course(course, quarter, max)
    end
    def remove_course(course)
        schedule.remove_course(course)
    end
end

class Schedule
    []Quarters term;
    def add_course(course, quarter)
        if term[quarter].class_count > max {
            throw error;
        }else{
            term[quarter].add_course(course);
        }
        
    end
    
    def remove_course(course)
        quarters[quarter].remove_course(course);
    end

end

class Quarter
    []Course classes
    
    def class_count()
      classes.length
    end
    def add_course(course)
        classes.push(course)
    end
    
    def remove_course(course)
        classes.remove(course)
    end

end
class Course
    @name
    @id
end