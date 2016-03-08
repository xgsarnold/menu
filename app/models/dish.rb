class Dish < ActiveRecord::Base
  attr_reader :course_id
  belongs_to :course

  def course_name
    course && course.name
  end
end
