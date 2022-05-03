import time
from random import randint
for i in range(10):
    p=randint(3,10)
    print(p)
    time.sleep(p)
print("종료")