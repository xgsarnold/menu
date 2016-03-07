require 'test_helper'

class CourseTest < ActiveSupport::TestCase

  test "courses exist" do
    assert Course.new
  end

  test "course has many dishes" do
    entree = Course.new(name: "entrees")
    assert entree.dishes
  end

end
