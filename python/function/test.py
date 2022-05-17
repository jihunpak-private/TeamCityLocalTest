import numpy as np


def test(a, b):
    result = a + b
    return result


def test2(a):
    result = "hello " + a
    return result


if __name__ == "__main__":
    result = test(2, 3)
    result2 = test2("jihun")
    print(result)
    print(result2)
    print(np.random.rand(5))
