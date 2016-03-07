require 'test_helper'


class DishTest < ActiveSupport::TestCase

  test "dishes exist" do
    assert Dish.new
  end

  test "dishes belong to a course" do
    ramen = Dish.new(name: "Tonkotsu", description: "yummy")
    entree = Course.new(name: "entree")
    entree << ramen
    assert_equal 1, dishes(:one).course_id
    assert_equal 1, ramen.course_id
  end

end
