.intel_syntax
.globl _add
_add:
    mov eax, [esp + 4]      # get argument a from stack
    mov ebx, [esp + 8]      # get argument b from stack
    mov edx, 0              # prep the comparison to zero for finishing
start:
    cmp ebx, edx            # if we have no carry bits
    jz done                 # we are done
    mov ecx, eax            # otherwise, buffer a into c for now
    xor eax, ebx            # calculate the sums with xor ( 1 + 1 = 0, 0 + 1 = 1, 1 + 0 = 1, and 0 + 0 = 0)
    and ebx, ecx            # and calculate the carries with and ( 1 + 1 will carry, otherwise we wont)
    shl ebx, 1              # shift the carries over
    jmp start               # and repeat
done:
    ret
