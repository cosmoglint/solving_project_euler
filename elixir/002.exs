
defmodule Fibonacci do
  #function to filter even numbers
  def even?(x) , do: if rem(x, 2) == 0, do: 1, else: 0
  def fib() do
    fib(0,1,0)
  end

  def fib(prev, cur, accumulator) when cur < 4000000 do
    new_val = accumulator  + ( even?(cur) * cur )
    fib(cur, prev + cur, new_val)
  end
  def fib(_, _, ans) do
    ans
  end
end

IO.puts Fibonacci.fib
