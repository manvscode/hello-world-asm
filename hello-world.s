
# We are using printf() from libc
.extern printf

.data

	# Create the string for printf
	msg:
		.ascii  "Hello World from Assemblyx0ax00"

.text

	# Make main publicly visible
	.global main



	# main() function
	main:
		#push %ebp
		#movl %esp, %ebp
		push $msg

		call _printf

		movl $0, %eax
		leave
		ret
