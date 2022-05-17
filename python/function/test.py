import numpy as np

def test(a, b):
    result = a + b
    print("Hello, jihun")
    print(result)
    print(np.random.rand(5))

    return result


if __name__ == "__main__":
    res = test(2,3)
    print(res)