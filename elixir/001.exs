# create a stream with the required range, filter and add it as you please

check_rem = fn divident -> ( fn value -> rem(value, divident) == 0 end ) end

div_3? = check_rem.(3)
div_5? = check_rem.(5)

check_3_5? = fn value -> (div_3?.(value) || div_5?.(value)) end

sum_num = &(&1 + &2)

 1..999 |> Stream.filter(check_3_5?) |> Enum.reduce(0, sum_num) |> IO.inspect()
