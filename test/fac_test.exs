defmodule FacTest do
  use ExUnit.Case
  doctest Fac

  test "greets the world" do
    assert Fac.hello() == :world
  end
end
