def summ(a, b):
    return a + b

def dec_to_bin(a):
    b = ''
    while a > 0:
        b += str(a % 2)
        a //= 2
    return b[::-1]
def dec_into_any(a, c):
    b = ''
    while a > 0:
        b += str(a % c)
        a //= c
    return b[::-1]

def reverse(a):
    return a[::-1]

