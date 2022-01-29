defmodule Prime do
#  def eradicate(object) do
#    {iter,value} = object
#  end
  #

  def check_rem(n) do
    fn value -> rem(value, n) == 0 end
  end

  def eradicate([head | tail]) when tail != {}do
    div_head? =  check_rem(head)
    newtail = tail
      |> Enum.drop_while(fn x -> div_head?.(x) end)
    newtail
    #{head | eradicate(newtail)}
  end

#  def eratosthenos(val) do
#    1..val
#    |> Stream.each(fn x -> [x: true] end)
#      |> Stream.map(eradicate)
#  end
end


Prime.eradicate([1,2,3,4,5,6,7]) |> IO.puts
#IO.puts Prime.largestPrimeFactor 600851475143
