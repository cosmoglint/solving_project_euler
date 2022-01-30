defmodule Prime do
#  def eradicate(object) do
#    {iter,value} = object
#  end

  def check_rem(n) do
    fn value -> rem(value, n) == 0 end
  end

  def eradicate([head | tail]) when tail != []do
    div_head? =  check_rem(head)
    newtail = tail
      |> Enum.reject(fn x -> div_head?.(x) end)
      |> Enum.to_list
      |> IO.inspect
    [head | eradicate(newtail)]
  end

  def eradicate(val) do
    val
  end

#  def eratosthenos(val) do
#    1..val
#    |> Stream.each(fn x -> [x: true] end)
#      |> Stream.map(eradicate)
#  end
end

#1..10 |> Enum.drop_while(fn x -> x==5 end) |> IO.inspect

Prime.eradicate(2..20 |> Enum.to_list) |> IO.inspect
#IO.puts Prime.largestPrimeFactor 600851475143
