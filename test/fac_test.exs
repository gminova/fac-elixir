defmodule FacTest do
  use ExUnit.Case, async: true
  doctest Fac

  test "greets the world" do
    assert Fac.hello() == :world
  end

  test "check map function returns appropriate array" do
    assert Fac.map([], fn _add = x -> x * x end) == []
  end

  test "check map function returns type list" do
    #The pipe operator which feeds value in function after it
    assert Fac.map([], fn _add = x -> x * x end) |> is_list()
  end
end
