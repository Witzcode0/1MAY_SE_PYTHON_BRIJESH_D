# https://docs.python.org/3/py-modindex.html#cap-d


import random

# print(dir(random))

# print(random.random()) 0 - 1
# print(random.randint(1,100))
# print(random.randrange(1, 11, 2))
# print(random.choice([1, 2, 3, 4, 5,]))

# items = ['a', 'b', 'c', 'd', 'e']

# random.shuffle(items)
# print(items)  # ['e', 'a', 'd', 'c', 'b']


import math

# print(dir(math))
# print(math.factorial(5))
# print(math.pi)
# print(math.sqrt(16))


from datetime import datetime, timedelta
# https://docs.python.org/3/library/datetime.html#module-datetime
# print(datetime.now())

current_time = datetime.now()
# past_time = current_time - timedelta(days=1)
# future_time = current_time + timedelta(days=2, hours=12)
# print(future_time)
# print(current_time.date())
# print(current_time.weekday())
# print(current_time.day)
# 0 - mon, 6 - sun

# print(current_time)

# print(datetime.strftime(current_time, "%d/%m/%Y, %H:%M:%S"))
# print(datetime.strftime(current_time, "%d/%m/%Y, %I:%M:%S %p"))

# project-1     project-2

# lib1 - 2.1.4  lib1 - 3.4.4