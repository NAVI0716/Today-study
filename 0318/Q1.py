#3
def func(n):
    if (n==0):
        return 0
    return (n % 10)**2+func(n//10)

def sum_V(n):
    a=0
    for i in range(1,n+1):
        if 1<= i <= 1000:
           a+=i
    return a

#n=int(input("입력:"))
#print(f"출력:{f(n)}")


def main():
    print(func(1234))

if __name__=="__main__":
    print(func(1234))
    main()