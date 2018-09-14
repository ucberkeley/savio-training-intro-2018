import numpy as np
import time
n = 10000
x = np.random.normal(0, 1, size=(n, n))
print(time.time())
x = x.T.dot(x)
print(time.time())
U = np.linalg.cholesky(x)
print(time.time())
