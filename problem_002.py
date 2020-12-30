# find sum of all even fibonacci numbers below four million.



# phi = 1.618034
# golden ration fibonacci formula of (nth number ) = ((phi ** n) - ((1 - phi) ** n))  // (5**(1/2))

phi = 1.618034
sum = 0
for i in range(3,37,3):
    val = int(((phi ** i) - ((1 - phi) ** i))  // (5**(1/2)))
    if (val>4000000):
        print(i)
        break
    sum += val;

print(sum)
