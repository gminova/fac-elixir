defmodule FacTest do
  use ExUnit.Case, async: true
  doctest Fac

  test "greets the world" do
    assert Fac.hello() == :world
  end

  test "check map function returns appropriate array" do
    assert Fac.map([], fn _multiply = x -> x * x end) == []
  end

  test "check map function returns type list" do
    # The pipe operator which feeds value in function after it
    assert Fac.map([], fn _multiply = x -> x * x end) |> is_list()
  end

  test "check map function returns correct length" do
    # The pipe operator which feeds value in function after it
    assert Fac.map([1, 2, 3], fn _multiply = x -> x * x end) |> length() == 3
  end

  test "check map function returns correct values in list" do
    # Works similar to deepEqual since it compares actual values but not references
    assert Fac.map([1, 2, 3], fn _multiply = x -> x * x end) == [1, 4, 9]
  end

  test "Testing square_sum function" do
    assert Fac.square_sum([1, 2]) == 5
    # assert Fac.square_sum([0, 3, 4, 5]) == 50
    # assert Fac.square_sum([]) == 0
    # assert Fac.square_sum([-1, -2]) == 5
    # assert Fac.square_sum([-1, 0, 1]) == 2
  end
end
