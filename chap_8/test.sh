#!/bin/sh

for X in 5 hello test.sh
do
    echo "================ X = $X ================"
    if [ "$X" -lt "0" ]
    then
	echo "X is less than zero"
    fi
    if [ "$X" -gt "0" ]; then            #  Note that we can use the semicolon (;) to join two lines together
	echo "X is more than zero"
    fi
    [ "$X" -le "0" ] && \
	echo "X is less than or equal to  zero"
    [ "$X" -ge "0" ] && \
	echo "X is more than or equal to zero"
    [ "$X" = "0" ] && \
	echo "X is the string or number \"0\""
    [ "$X" = "hello" ] && \
	echo "X matches the string \"hello\""
    [ "$X" != "hello" ] && \
	echo "X is not the string \"hello\""
    [ -n "$X" ] && \
	echo "X is of nonzero length"
    [ -f "$X" ] && \
	echo "X is the path of a real file" || \
	    echo "No such file: $X"
    [ -x "$X" ] && \
	echo "X is the path of an executable file"
    [ "$X" -nt "/etc/passwd" ] && \
	echo "X is a file which is newer than /etc/passwd"

    # simpler if statement:
    [ $X -ne 0 ] && echo "X isn't zero" || echo "X is zero"
    [ -f $X ] && echo "X is a file" || echo "X is not a file"
    [ -n $X ] && echo "X is of non-zero length" || \
	    echo "X is of zero length"
done


### Console Output:
# ================ X = 5 ================
# X is more than zero
# X is more than or equal to zero
# X is not the string "hello"
# X is of nonzero length
# No such file: 5
# X isn't zero
# X is not a file
# X is of non-zero length
# ================ X = hello ================
# ./test.sh: line 6: [: hello: integer expression expected
# ./test.sh: line 10: [: hello: integer expression expected
# ./test.sh: line 13: [: hello: integer expression expected
# ./test.sh: line 15: [: hello: integer expression expected
# X matches the string "hello"
# X is of nonzero length
# No such file: hello
# ./test.sh: line 34: [: hello: integer expression expected
# X is zero
# X is not a file
# X is of non-zero length
# ================ X = test.sh ================
# ./test.sh: line 6: [: test.sh: integer expression expected
# ./test.sh: line 10: [: test.sh: integer expression expected
# ./test.sh: line 13: [: test.sh: integer expression expected
# ./test.sh: line 15: [: test.sh: integer expression expected
# X is not the string "hello"
# X is of nonzero length
# X is the path of a real file
# X is the path of an executable file
# X is a file which is newer than /etc/passwd
# ./test.sh: line 34: [: test.sh: integer expression expected
# X is zero
# X is a file
# X is of non-zero length

# Note: -a, -e (both meaning "file exists"), -S (file is a Socket), -nt (file is newer than), -ot (file is older than), -ef (paths refer to the same file) and -O (file is owned by the user running the test) are not available in the traditional Bourne shell (eg, /bin/sh on Solaris, AIX, HPUX, etc).
