# declair module
defmodule Math do
  def sum(a, b) do
    do_sum(a, b)
  end

  # private function. callable inside its module.
  defp do_sum(a, b) do
    a + b
  end
end

# error
# IO.puts Math.do_sum(1, 2)

defmodule Test do
  # def zero?(0) do: true
  def zero?(0) do
    true
  end

  # def zero?(x) when is_integer(x) do: false
  def zero?(x) when is_integer(x) do # trailing ? means returns boolean.
    false
  end
end

IO.puts(Test.zero?(1)) # false

# raise error because argument does not match any clauses on Test.zero?
# IO.puts(Test.zero?([1]))

# & the capture operator makes function as anonymouse function.
fun = &Test.zero?/1

# operator can be captured as well.
add = &+/2
fun2 = &(&1 + 1)

defmodule Concat do
  # seperator as default argument
  def join(a, b , sep \\ " ") do
    a <> sep <> b
  end
end

IO.puts(Concat.join("Hello", "world"))
IO.puts(Concat.join("Hello", "world", "_"))

defmodule Concat2 do
  # if function has multiple default arguments, you should declair "head" like this one.
  def join(a, b \\ nil, sep \\ " ")

  # _ underscore on argument means it will be ignored in the function
  def join(a, b, _sep) when is_nil(b) do
    a
  end

  def join(a, b, sep) do
    a <> sep <> b
  end
end

## do not overlap
## first function will always match whereas third argument is presented.
# defmodule Concat do
#   def join(a, b) do
#     IO.puts "***First join"
#     a <> b
#   end

#   def join(a, b, sep \\ " ") do
#     IO.puts "***Second join"
#     a <> sep <> b
#   end
# end
