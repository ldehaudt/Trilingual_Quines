def STR():
	return "def STR():%c%creturn %c%s%c%c%cdef FILE():%c%cf = open(%cGrace_kid.py%c, %cw%c)%c%cf.write(STR() %% (10, 9, 34, STR(), 34, 10, 10, 10, 9, 34, 34, 34, 34, 10, 9, 10, 10, 10, 9, 10, 9, 10, 10))%c%cdef BEANS():%c%cwow = 1%c%c# I LOVE BEAAAAAAAAAAAAAAAAAAAAAAAANNNNNSSSSS%c%cFILE()"

def FILE():
	f = open("Grace_kid.py", "w")
	f.write(STR() % (10, 9, 34, STR(), 34, 10, 10, 10, 9, 34, 34, 34, 34, 10, 9, 10, 10, 10, 9, 10, 9, 10, 10))

def BEANS():
	wow = 1
	# I LOVE BEAAAAAAAAAAAAAAAAAAAAAAAANNNNNSSSSS

FILE()