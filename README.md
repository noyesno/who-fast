Who is Fast
===========

Which programming language runs faster is always a topic.

Thousands of words have nothing on a real compete - just run it.

### Platform & Version ###

```
Linux 2.6.32-20130307.60.9.bh6.x86_64 #1 SMP x86_64 x86_64 x86_64 GNU/Linux
Tcl 8.5.7
Node.js v0.10.23
PHP 5.2.17 (cgi-fcgi) (built: Oct  2 2013 09:23:52)
Python 2.6.6
ruby 1.9.3p429 (2013-05-15 revision 40747) [x86_64-linux]
```

### fileio-input ###

Read from a text file line by line.

```
tcl    3 fileio-input        | 0.030 = 0.027 + 0.003 [0.031]
tcl    4 fileio-input        | 0.031 = 0.025 + 0.006 [0.032]
py     . fileio-input        | 0.034 = 0.029 + 0.005 [0.171]
tcl    2 fileio-input        | 0.036 = 0.032 + 0.004 [0.398]
tcl    . fileio-input        | 0.052 = 0.045 + 0.007 [0.052]
tcl    5 fileio-input        | 0.054 = 0.048 + 0.006 [0.150]
php    . fileio-input        | 0.075 = 0.057 + 0.018 [0.117]
js     2 fileio-input        | 0.223 = 0.188 + 0.035 [0.542]
js     . fileio-input        | 0.248 = 0.223 + 0.025 [0.250]
```

### mandelbrot ###

Mandelbrot is more on math calculation.

```
js     . mandelbrot          | 0.108 = 0.099 + 0.009 [0.110]
php    . mandelbrot          | 2.163 = 2.153 + 0.010 [4.156]
py     . mandelbrot          | 2.346 = 2.324 + 0.022 [2.384]
rb     . mandelbrot          | 2.885 = 2.875 + 0.010 [4.937]
tcl    . mandelbrot          | 3.101 = 3.095 + 0.006 [3.134]
```
