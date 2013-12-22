import scipy.optimize as opt
import scipy
import numpy
from numpy import *
import math

def f(x):
	return log(sin(2*x)/x,x)

def frange(x, y, jump):
  while x < y:
    yield x
    x += jump

values = []
x = -pi+.01
y = pi-.01
for i in frange(x,y,.01):
	max_x = opt.fmin_l_bfgs_b(lambda x: -f(x), i, bounds=[(x,y)],approx_grad=True)
	values.append(max_x[1][0])

index = -1
for value in values:
	index += 1
	if numpy.isnan(value).any():
		values.pop(index)

print max_x[0][0]
print min(values)*-1