#Python's standard library function random.shuffle uses this algorithm and so should normally be used. 
 
def FisherYatesShuffle(x):
    for i in range(len(x)-1, 0, -1):
        j = randrange(i + 1)
        x[i], x[j] = x[j], x[i]
 
x = list(range(10))
FisherYatesShuffle(x)
print("shuffled:", x)
