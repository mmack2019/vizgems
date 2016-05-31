# : : generated from seq.rt by mktest : : #

UNIT seq

TEST 01 'integer [first [incr]] last combinations'

	EXEC	10
		OUTPUT - $'1\n2\n3\n4\n5\n6\n7\n8\n9\n10'

	EXEC	5 10
		OUTPUT - $'5\n6\n7\n8\n9\n10'

	EXEC	1 2 10
		OUTPUT - $'1\n3\n5\n7\n9'

	EXEC	10 5
		OUTPUT -

	EXEC	10 -2 1
		OUTPUT - $'10\n8\n6\n4\n2'

	EXEC	-- -10 2 10
		OUTPUT - $'-10\n-8\n-6\n-4\n-2\n0\n2\n4\n6\n8\n10'

	EXEC	10 -2 -10
		OUTPUT - $'10\n8\n6\n4\n2\n0\n-2\n-4\n-6\n-8\n-10'

TEST 02 'integer [first [incr]] last combinations with format'

	EXEC	-f %0100.5f 10
		OUTPUT - $'000000000000000000000000000000000000000000000000000000000000000000000000000'\
$'0000000000000000001.00000
0000000000000000000000000000000000000000000000000000000000000000000000000000'\
$'000000000000000002.00000
0000000000000000000000000000000000000000000000000000000000000000000000000000'\
$'000000000000000003.00000
0000000000000000000000000000000000000000000000000000000000000000000000000000'\
$'000000000000000004.00000
0000000000000000000000000000000000000000000000000000000000000000000000000000'\
$'000000000000000005.00000
0000000000000000000000000000000000000000000000000000000000000000000000000000'\
$'000000000000000006.00000
0000000000000000000000000000000000000000000000000000000000000000000000000000'\
$'000000000000000007.00000
0000000000000000000000000000000000000000000000000000000000000000000000000000'\
$'000000000000000008.00000
0000000000000000000000000000000000000000000000000000000000000000000000000000'\
$'000000000000000009.00000
0000000000000000000000000000000000000000000000000000000000000000000000000000'\
000000000000000010.00000

	EXEC	-f %0100.5f 5 10
		OUTPUT - $'000000000000000000000000000000000000000000000000000000000000000000000000000'\
$'0000000000000000005.00000
0000000000000000000000000000000000000000000000000000000000000000000000000000'\
$'000000000000000006.00000
0000000000000000000000000000000000000000000000000000000000000000000000000000'\
$'000000000000000007.00000
0000000000000000000000000000000000000000000000000000000000000000000000000000'\
$'000000000000000008.00000
0000000000000000000000000000000000000000000000000000000000000000000000000000'\
$'000000000000000009.00000
0000000000000000000000000000000000000000000000000000000000000000000000000000'\
000000000000000010.00000

	EXEC	-f %0100.5f 1 2 10
		OUTPUT - $'000000000000000000000000000000000000000000000000000000000000000000000000000'\
$'0000000000000000001.00000
0000000000000000000000000000000000000000000000000000000000000000000000000000'\
$'000000000000000003.00000
0000000000000000000000000000000000000000000000000000000000000000000000000000'\
$'000000000000000005.00000
0000000000000000000000000000000000000000000000000000000000000000000000000000'\
$'000000000000000007.00000
0000000000000000000000000000000000000000000000000000000000000000000000000000'\
000000000000000009.00000

	EXEC	-f %0100.5f 10 5
		OUTPUT -

	EXEC	-f %0100.5f 10 -2 1
		OUTPUT - $'000000000000000000000000000000000000000000000000000000000000000000000000000'\
$'0000000000000000010.00000
0000000000000000000000000000000000000000000000000000000000000000000000000000'\
$'000000000000000008.00000
0000000000000000000000000000000000000000000000000000000000000000000000000000'\
$'000000000000000006.00000
0000000000000000000000000000000000000000000000000000000000000000000000000000'\
$'000000000000000004.00000
0000000000000000000000000000000000000000000000000000000000000000000000000000'\
000000000000000002.00000

	EXEC	-f %0100.5f -- -10 2 10
		OUTPUT - $'-00000000000000000000000000000000000000000000000000000000000000000000000000'\
$'0000000000000000010.00000
-000000000000000000000000000000000000000000000000000000000000000000000000000'\
$'000000000000000008.00000
-000000000000000000000000000000000000000000000000000000000000000000000000000'\
$'000000000000000006.00000
-000000000000000000000000000000000000000000000000000000000000000000000000000'\
$'000000000000000004.00000
-000000000000000000000000000000000000000000000000000000000000000000000000000'\
$'000000000000000002.00000
0000000000000000000000000000000000000000000000000000000000000000000000000000'\
$'000000000000000000.00000
0000000000000000000000000000000000000000000000000000000000000000000000000000'\
$'000000000000000002.00000
0000000000000000000000000000000000000000000000000000000000000000000000000000'\
$'000000000000000004.00000
0000000000000000000000000000000000000000000000000000000000000000000000000000'\
$'000000000000000006.00000
0000000000000000000000000000000000000000000000000000000000000000000000000000'\
$'000000000000000008.00000
0000000000000000000000000000000000000000000000000000000000000000000000000000'\
000000000000000010.00000

	EXEC	-f %0100.5f 10 -2 -10
		OUTPUT - $'000000000000000000000000000000000000000000000000000000000000000000000000000'\
$'0000000000000000010.00000
0000000000000000000000000000000000000000000000000000000000000000000000000000'\
$'000000000000000008.00000
0000000000000000000000000000000000000000000000000000000000000000000000000000'\
$'000000000000000006.00000
0000000000000000000000000000000000000000000000000000000000000000000000000000'\
$'000000000000000004.00000
0000000000000000000000000000000000000000000000000000000000000000000000000000'\
$'000000000000000002.00000
0000000000000000000000000000000000000000000000000000000000000000000000000000'\
$'000000000000000000.00000
-000000000000000000000000000000000000000000000000000000000000000000000000000'\
$'000000000000000002.00000
-000000000000000000000000000000000000000000000000000000000000000000000000000'\
$'000000000000000004.00000
-000000000000000000000000000000000000000000000000000000000000000000000000000'\
$'000000000000000006.00000
-000000000000000000000000000000000000000000000000000000000000000000000000000'\
$'000000000000000008.00000
-000000000000000000000000000000000000000000000000000000000000000000000000000'\
000000000000000010.00000

TEST 03 'integer [first [incr]] last combinations with equal width'

	EXEC	-w 10
		OUTPUT - $'01\n02\n03\n04\n05\n06\n07\n08\n09\n10'

	EXEC	-w 5 10
		OUTPUT - $'05\n06\n07\n08\n09\n10'

	EXEC	-w 1 2 10
		OUTPUT - $'1\n3\n5\n7\n9'

	EXEC	-w 1 2 11
		OUTPUT - $'01\n03\n05\n07\n09\n11'

	EXEC	-w 10 5
		OUTPUT -

	EXEC	-w 10 -2 1
		OUTPUT - $'10\n08\n06\n04\n02'

	EXEC	-w -- -10 2 10
		OUTPUT - $'-10\n-08\n-06\n-04\n-02\n000\n002\n004\n006\n008\n010'

	EXEC	-w 10 -2 -10
		OUTPUT - $'010\n008\n006\n004\n002\n000\n-02\n-04\n-06\n-08\n-10'

	EXEC	-w 10.000000000000000000000000000000 -2 -10

TEST 04 'integer [first [incr]] last combinations with separator'

	EXEC	$'-s;\n' 10
		OUTPUT - $'1;\n2;\n3;\n4;\n5;\n6;\n7;\n8;\n9;\n10'

	EXEC	$'-s;\n' 5 10
		OUTPUT - $'5;\n6;\n7;\n8;\n9;\n10'

	EXEC	$'-s;\n' 1 2 10
		OUTPUT - $'1;\n3;\n5;\n7;\n9'

	EXEC	$'-s;\n' 10 5
		OUTPUT -

	EXEC	$'-s;\n' 10 -2 1
		OUTPUT - $'10;\n8;\n6;\n4;\n2'

	EXEC	$'-s;\n' -- -10 2 10
		OUTPUT - $'-10;\n-8;\n-6;\n-4;\n-2;\n0;\n2;\n4;\n6;\n8;\n10'

	EXEC	$'-s;\n' 10 -2 -10
		OUTPUT - $'10;\n8;\n6;\n4;\n2;\n0;\n-2;\n-4;\n-6;\n-8;\n-10'

TEST 05 'floating [first [incr]] last combinations'

	EXEC	1.0
		OUTPUT - 1

	EXEC	0.5 1.0
		OUTPUT - 0.5

	EXEC	0.1 0.2 1.0
		OUTPUT - $'0.1\n0.3\n0.5\n0.7\n0.9'

	EXEC	1.0 0.5
		OUTPUT -

	EXEC	1.0 -0.2 0.1
		OUTPUT - $'1\n0.8\n0.6\n0.4\n0.2'

	EXEC	-- -1.0 0.2 1.0
		OUTPUT - $'-1\n-0.8\n-0.6\n-0.4\n-0.2\n0\n0.2\n0.4\n0.6\n0.8\n1'

	EXEC	1.0 -0.2 -1.0
		OUTPUT - $'1\n0.8\n0.6\n0.4\n0.2\n0\n-0.2\n-0.4\n-0.6\n-0.8\n-1'

TEST 06 'floating [first [incr]] last combinations with format'

	EXEC	-f %0100.5f 1.0
		OUTPUT - 000000000000000000000000000000000000000000000000000000000000000000000000000000\
0000000000000001.00000

	EXEC	-f %0100.5f 0.5 1.0
		OUTPUT - 000000000000000000000000000000000000000000000000000000000000000000000000000000\
0000000000000000.50000

	EXEC	-f %0100.5f 0.1 0.2 1.0
		OUTPUT - $'000000000000000000000000000000000000000000000000000000000000000000000000000'\
$'0000000000000000000.10000
0000000000000000000000000000000000000000000000000000000000000000000000000000'\
$'000000000000000000.30000
0000000000000000000000000000000000000000000000000000000000000000000000000000'\
$'000000000000000000.50000
0000000000000000000000000000000000000000000000000000000000000000000000000000'\
$'000000000000000000.70000
0000000000000000000000000000000000000000000000000000000000000000000000000000'\
000000000000000000.90000

	EXEC	-f %0100.5f 1.0 0.5
		OUTPUT -

	EXEC	-f %0100.5f 1.0 -0.2 0.1
		OUTPUT - $'000000000000000000000000000000000000000000000000000000000000000000000000000'\
$'0000000000000000001.00000
0000000000000000000000000000000000000000000000000000000000000000000000000000'\
$'000000000000000000.80000
0000000000000000000000000000000000000000000000000000000000000000000000000000'\
$'000000000000000000.60000
0000000000000000000000000000000000000000000000000000000000000000000000000000'\
$'000000000000000000.40000
0000000000000000000000000000000000000000000000000000000000000000000000000000'\
000000000000000000.20000

	EXEC	-f %0100.5f -- -1.0 0.2 1.0
		OUTPUT - $'-00000000000000000000000000000000000000000000000000000000000000000000000000'\
$'0000000000000000001.00000
-000000000000000000000000000000000000000000000000000000000000000000000000000'\
$'000000000000000000.80000
-000000000000000000000000000000000000000000000000000000000000000000000000000'\
$'000000000000000000.60000
-000000000000000000000000000000000000000000000000000000000000000000000000000'\
$'000000000000000000.40000
-000000000000000000000000000000000000000000000000000000000000000000000000000'\
$'000000000000000000.20000
0000000000000000000000000000000000000000000000000000000000000000000000000000'\
$'000000000000000000.00000
0000000000000000000000000000000000000000000000000000000000000000000000000000'\
$'000000000000000000.20000
0000000000000000000000000000000000000000000000000000000000000000000000000000'\
$'000000000000000000.40000
0000000000000000000000000000000000000000000000000000000000000000000000000000'\
$'000000000000000000.60000
0000000000000000000000000000000000000000000000000000000000000000000000000000'\
$'000000000000000000.80000
0000000000000000000000000000000000000000000000000000000000000000000000000000'\
000000000000000001.00000

	EXEC	-f %0100.5f 1.0 -0.2 -1.0
		OUTPUT - $'000000000000000000000000000000000000000000000000000000000000000000000000000'\
$'0000000000000000001.00000
0000000000000000000000000000000000000000000000000000000000000000000000000000'\
$'000000000000000000.80000
0000000000000000000000000000000000000000000000000000000000000000000000000000'\
$'000000000000000000.60000
0000000000000000000000000000000000000000000000000000000000000000000000000000'\
$'000000000000000000.40000
0000000000000000000000000000000000000000000000000000000000000000000000000000'\
$'000000000000000000.20000
0000000000000000000000000000000000000000000000000000000000000000000000000000'\
$'000000000000000000.00000
-000000000000000000000000000000000000000000000000000000000000000000000000000'\
$'000000000000000000.20000
-000000000000000000000000000000000000000000000000000000000000000000000000000'\
$'000000000000000000.40000
-000000000000000000000000000000000000000000000000000000000000000000000000000'\
$'000000000000000000.60000
-000000000000000000000000000000000000000000000000000000000000000000000000000'\
$'000000000000000000.80000
-000000000000000000000000000000000000000000000000000000000000000000000000000'\
000000000000000001.00000

	EXEC	-f %0100.5f 1.0000000000000000 -0.2 -1.0

TEST 07 'floating [first [incr]] last combinations with equal width'

	EXEC	-w 1.0
		OUTPUT - 1

	EXEC	-w 0.5 1.0
		OUTPUT - 0.5

	EXEC	-w 0.1 0.2 1.0
		OUTPUT - $'0.1\n0.3\n0.5\n0.7\n0.9'

	EXEC	-w 1.0 0.5
		OUTPUT -

	EXEC	-w 1.0 -0.2 0.1
		OUTPUT - $'1.0\n0.8\n0.6\n0.4\n0.2'

	EXEC	-w -- -1.0 0.2 1.0
		OUTPUT - $'-1.0\n-0.8\n-0.6\n-0.4\n-0.2\n00.0\n00.2\n00.4\n00.6\n00.8\n01.0'

	EXEC	-w 1.0 -0.2 -1.0
		OUTPUT - $'01.0\n00.8\n00.6\n00.4\n00.2\n00.0\n-0.2\n-0.4\n-0.6\n-0.8\n-1.0'

	EXEC	-w 1.000000000000000 -0.2 -1.0

TEST 08 'floating epsilon'

	EXEC	-- -5.0e-99 1.0e-99 5.0e-99
		OUTPUT - $'-5e-99\n-4e-99\n-3e-99\n-2e-99\n-1e-99\n0\n1e-99\n2e-99\n3e-99\n4e-99\n5e-99'

TEST 09 diagnostics

	EXEC
		ERROR - 'seq: too few arguments'
		EXIT 1

	EXEC	1 2 3 4
		ERROR - 'seq: too many arguments'

	EXEC	-f
		ERROR - $'seq: -f: format argument expected
Usage: seq [-w] [-f format] [-s string] [ first  [ incr ] ] last'
		EXIT 2

	EXEC	-s
		ERROR - $'seq: -s: string argument expected
Usage: seq [-w] [-f format] [-s string] [ first  [ incr ] ] last'

	EXEC	-w10 10
		ERROR - $'seq: -1: unknown option
seq: -0: unknown option
Usage: seq [-w] [-f format] [-s string] [ first  [ incr ] ] last'

	EXEC	-f%g -w 10
		ERROR - 'seq: format string may not be specified when printing equal width strings'
		EXIT 1
