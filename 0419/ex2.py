import numpy as np
import matplotlib.pyplot as plt
import matplotlib
def f(w0,w1):
    return w0**2+2*w0*w1+3

def df_dw0(w0, w1):
    return 2*w0+2*w1

def df_dw1(w0, w1):
    return 2*w0+0*w1

w_r = 2
dw = 0.25
w0 = np.arange(-w_r,w_r+dw,dw)
w1 = np.arange(-w_r,w_r+dw,dw)
wn = w0.shape[0]
ww0, ww1 = np.meshgrid(w0,w1)
ff = np.zeros((len(w0),len(w1)))
dff_dw0 = np.zeros((len(w0),len(w1)))
dff_dw1 = np.zeros((len(w0),len(w1)))
for i0 in range(wn):
    for i1 in range(wn):
        ff[i1,i0] = f(w0[i0],w1[i1])
        dff_dw0[i1, i0] = df_dw0(w0[i0],w1[i1])
        dff_dw1[i1, i0] = df_dw1(w0[i0],w1[i1])