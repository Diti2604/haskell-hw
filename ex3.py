def Y(f):
    return (lambda a: a(a))(lambda b:f(lambda a: b(b)(a)))

def first_n_numbers(n):
    return Y(lambda f: lambda a: 0 if a == 0 else a + f(a - 1))(n)

# print(first_n_numbers(0)) 
# print(first_n_numbers(1))
# print(first_n_numbers(2))
# print(first_n_numbers(3))
# print(first_n_numbers(4))