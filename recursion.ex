defmodule Recursion do
  # matches when n is greater than 0
  def print_multiple_times(msg, n) when n > 0 do
    IO.puts(msg)
    print_multiple_times(msg, n - 1)
  end

  # matches when n is 0
  def print_multiple_times(_msg, _n) do
    :ok
  end

  # let's think why functional programming solves problems using recursion.
  # there's no state on "pure" function.
  # so recursion acts as keeping tracking how "n" is chainging.
end

# Recursion.print_multiple_times("Hello!", 3)

defmodule Math do
  # list is being reduced, it is known as reduce algorithm
  def sum_list([head | tail], accumulator) do
    sum_list(tail, head + accumulator)
  end

  def sum_list([], accumulator) do
    accumulator
  end

  # list is being traversed, it is known as map algorithm
  def double_each([head | tail]) do
    [head * 2 | double_each(tail)]
  end

  def double_each([]) do
    []
  end
end

# Math.double_each([1,2,3,4])
