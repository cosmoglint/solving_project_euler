# find sum of all even fibonacci numbers below four million.



# phi = 1.618034
# golden ration fibonacci formula of (nth number ) = ((phi ** n) - ((1 - phi) ** n))  // (5**(1/2))

val = 0
phi = 1.618034
for i in range(3,101,3):
    # print((i*4)+val)
    print(int(((phi ** i) - ((1 - phi) ** i))  // (5**(1/2))));
    # val = i
