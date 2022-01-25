

mult_n? = &(rem(&1, &2) != 0)

check_rem = fn divident -> ( fn value -> rem(value, divident) != 0 end ) end

div_3? = check_rem.(3)
div_5? = check_rem.(5)

sum_num = &(&1 + &2)

test = 1..1000 |> Stream.filter(div_5?) |> Stream.filter(div_3?) |> Enum.reduce(0, sum_num) |> IO.inspect()
