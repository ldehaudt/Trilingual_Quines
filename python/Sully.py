import os
i = 5
str = "import os%ci = %d%cstr = %c%s%c%c%cif i <= 0:%c%cexit(1)%cif __file__ != %cSully.py%c:%c%ci = i - 1%cf = open(%cSully_%%d.py%c %% (i), %cw%c)%cf.write(str %% (10, i, 10, 34, str, 34, 10, 10, 10, 9, 10, 34, 34, 10, 9, 10, 34, 34, 34, 34, 10, 10, 10, 34, 34))%cf.close()%cos.system(%cpython Sully_%%d.py%c %% (i))"

if i <= 0:
	exit(1)
if __file__ != "Sully.py":
	i = i - 1
f = open("Sully_%d.py" % (i), "w")
f.write(str % (10, i, 10, 34, str, 34, 10, 10, 10, 9, 10, 34, 34, 10, 9, 10, 34, 34, 34, 34, 10, 10, 10, 34, 34))
f.close()
os.system("python Sully_%d.py" % (i))