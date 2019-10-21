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

  def square_sum([head | rest]) do
    [head * head | square_sum(rest)]
  end

  def square_sum([]) do
    []
  end

  def square(num) do
    num * num
  end

  def sum(num) do
    num + num
  end
end
