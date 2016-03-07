require 'test_helper'

class CourseTest < ActiveSupport::TestCase

  test "courses exist" do
    assert Course.new
  end

  test "course has many dishes" do
    assert Course.dishes
  end
  
end
