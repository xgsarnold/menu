class Dish < ActiveRecord::Base
  belongs_to :course

  def course_name
    course && course.name
  end
end
