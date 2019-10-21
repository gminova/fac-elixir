defmodule Fac do
  @moduledoc """
  Documentation for Fac.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Fac.hello()
      :world

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
end
