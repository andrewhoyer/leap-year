.section        __TEXT,__text,regular,pure_instructions
.build_version macos, 12, 0     sdk_version 13, 1
.global _main 
.p2align        4, 0x90

_main:
    ## Init year, result, reason
    ## Test 1900
    movq $1900, %r13
    callq printresult
    ## Test 2000
    movq $2000, %r13
    callq printresult
    ## Test 2023
    movq $2023, %r13
    callq printresult
    ## Test 2024
    movq $2024, %r13
    callq printresult

    ## Exit Program
    movq $0x2000001, %rax           ## System call for sys_exit
    xorq %rdi, %rdi                 ## Status 0
    syscall

printresult:
    ## Print the results
    movq $0x2000004, %rax          ## System call for sys_write
    movq $1, %rdi                  ## 1 is stdout
    leaq yeartext(%rip), %rsi      ## Relative string addr
    movq $6, %rdx                  ## Len (bytes)
    syscall

    movq %r13, %rsi
    callq printnumber		   ## Print Year

    movq $0x2000004, %rax          ## System call for sys_write
    movq $1, %rdi                  ## 1 is stdout
    leaq resulttext(%rip), %rsi      ## Relative string addr
    movq $9, %rdx                  ## Len (bytes)
    syscall

    movq %r13, %rsi
    callq printleap

    movq $0x2000004, %rax          ## System call for sys_write
    movq $1, %rdi                  ## 1 is stdout
    leaq reasontext(%rip), %rsi      ## Relative string addr
    movq $9, %rdx                  ## Len (bytes)
    syscall

    movq %r13, %rsi
    callq printreason

    movq $0x2000004, %rax          ## System call for sys_write
    movq $1, %rdi                  ## 1 is stdout
    leaq newline(%rip), %rsi      ## Relative string addr
    movq $2, %rdx                  ## Len (bytes)
    syscall
    retq

printleap:
    xorq %rdx, %rdx 		## Clear Remainder
    movq %rsi, %rax		## Load year to accum
    movq $4, %rbx		## Div 4
    divq %rbx			## rdx contains remainder
    movq %rdx, %r10		## r10 is mod4

    xorq %rdx, %rdx		## Clear Remainder
    movq %rsi, %rax		## Load accum
    movq $100, %rbx		## Div 100
    divq %rbx			## rdx contains remainder
    movq %rdx, %r11		## r11 is mod100

    xorq %rdx, %rdx		## Clear Remainder
    movq %rsi, %rax		## Load accum
    movq $400, %rbx		## Div 400
    divq %rbx			## rdx contains remainder
    movq %rdx, %r12		## r12 is mod400

    testq %r10, %r10		## div4 = 0
    jnz .notdiv4		## if not move on
    testq %r11, %r11		## div100 = 0
    jz .test400			## if it is test 400 year rule
    callq printtrue		## div4 plain year
    retq

    .test400:
    testq %r12, %r12		## div400 = 0
    jnz .notdiv4		## if not then fail
    callq printtrue		## div400 rule
    retq

    .notdiv4:
    callq printfalse
    retq

printtrue:
    movq $0x2000004, %rax          ## System call for sys_write
    movq $1, %rdi                  ## 1 is stdout
    leaq truetext(%rip), %rsi      ## Relative string addr
    movq $4, %rdx                  ## Len (bytes)
    syscall
    retq

printfalse:
    movq $0x2000004, %rax          ## System call for sys_write
    movq $1, %rdi                  ## 1 is stdout
    leaq falsetext(%rip), %rsi      ## Relative string addr
    movq $5, %rdx                  ## Len (bytes)
    syscall
    retq

printreason:
    xorq %rdx, %rdx     ## Clear Remainder
    movq %rsi, %rax     ## Load year to accum
    movq $4, %rbx       ## Div 4
    divq %rbx           ## rdx contains remainder
    movq %rdx, %r10     ## r10 is mod4

    xorq %rdx, %rdx     ## Clear Remainder
    movq %rsi, %rax     ## Load accum
    movq $100, %rbx     ## Div 100
    divq %rbx           ## rdx contains remainder
    movq %rdx, %r11     ## r11 is mod100

    xorq %rdx, %rdx     ## Clear Remainder
    movq %rsi, %rax     ## Load accum
    movq $400, %rbx     ## Div 400
    divq %rbx           ## rdx contains remainder
    movq %rdx, %r12     ## r12 is mod400

    testq %r10, %r10        ## div4 = 0
    jnz .notdiv4r        ## if not move on
    testq %r11, %r11        ## div100 = 0
    jz .test400r        ## if it is test 400 year rule
    callq printdiv4     ## div4 plain year
    retq

    .test400r:
    testq %r12, %r12        ## div400 = 0
    jnz .div100r           ## if not then fail
    callq printdiv400     ## div400 rule
    retq

    .div100r:
    callq printdiv100
    retq

    .notdiv4r:
    callq printnotdiv4
    retq

printdiv4:
    movq $0x2000004, %rax          ## System call for sys_write
    movq $1, %rdi                  ## 1 is stdout
    leaq div4rule(%rip), %rsi      ## Relative string addr
    movq $8, %rdx                  ## Len (bytes)
    syscall
    retq

printnotdiv4:
    movq $0x2000004, %rax          ## System call for sys_write
    movq $1, %rdi                  ## 1 is stdout
    leaq notdiv4rule(%rip), %rsi      ## Relative string addr
    movq $12, %rdx                  ## Len (bytes)
    syscall
    retq

printdiv100:
    movq $0x2000004, %rax          ## System call for sys_write
    movq $1, %rdi                  ## 1 is stdout
    leaq year100rule(%rip), %rsi      ## Relative string addr
    movq $23, %rdx                  ## Len (bytes)
    syscall
    retq

printdiv400:
    movq $0x2000004, %rax          ## System call for sys_write
    movq $1, %rdi                  ## 1 is stdout
    leaq year400rule(%rip), %rsi      ## Relative string addr
    movq $23, %rdx                  ## Len (bytes)
    syscall
    retq

printnumber:
    leaq num+11(%rip), %rdi ## Load address of the end of the buffer into rdi
    movb $0, (%rdi) ## Null-terminate the string

    ## Convert number to string
    .convloop:
        xorq %rdx, %rdx ## clear remainder
        movq %rsi, %rax ## load number to accumulator
        movq $10, %rbx
        divq %rbx ## Divide rsi by 10, result in rax, remainder in rdx
        addb $48, %dl ## Convert to ASCII
        decq %rdi 
        movb %dl, (%rdi)
        movq %rax, %rsi ## update rsi with quotient
        testq %rax, %rax 
        jnz .convloop

    ## Prepare for write syscall
    leaq num+11(%rip), %rdx  # Load the end address of the buffer
    subq %rdi, %rdx          # Calculate the length of the string
    movq %rdi, %rsi          # Set %rsi to the start of the string
    movq $0x2000004, %rax    # syscall number for write
    movq $1, %rdi            # 1 is stdout
    syscall
    retq

yeartext:
    .asciz "Year: "

resulttext:
    .asciz " Result: "

reasontext:
    .asciz " Reason: "

newline:
    .asciz "\n"

truetext:
    .asciz "True"

falsetext:
    .asciz "False"

year400rule:
    .asciz "Div by 4, 400 year rule"

year100rule:
    .asciz "Div by 4, 100 year rule"

div4rule:
    .asciz "Div by 4"

notdiv4rule:
    .asciz "Not div by 4"

.lcomm num, 12
