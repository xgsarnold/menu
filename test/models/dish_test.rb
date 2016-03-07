require 'test_helper'


class DishTest < ActiveSupport::TestCase

  test "dishes exist" do
    assert Dish.new
  end

  test "dishes belong to a course" do
    ramen = Dish.new(name: "Tonkotsu", description: "yummy")
    entree = Course.new(name: "entree")
    entree.dishes << ramen
    assert_equal entree.dishes, [ramen]
  end

end
