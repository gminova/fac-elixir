defmodule Fac do
  @moduledoc """
  Documentation for Fac.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Fac.hello()
      :world

      iex> Fac.map([], fn _multiply = x -> x * x end)
      []

      iex> Fac.map([], fn _multiply = x -> x * x end) |> is_list()
      true

  """
  def hello do
    :world
  end

  def map([head | rest], fun) do
    [fun.(head) | map(rest, fun)]
  end

  def map([], _fun) do
    []
  end

  def square_sum(nums) do
    Enum.reduce(nums, 0, &((&1 * &1) + &2))
  end
end
