# Assembly Code Bug: Address Overflow

This repository demonstrates a common error in assembly programming: address overflow. The code attempts to access memory using a calculation that can exceed the address space limits, leading to unexpected behavior or program crashes.  The solution shows how to mitigate this issue.

## Bug Description
The `mov eax, [ebx+ecx*4]` instruction in `bug.asm` is susceptible to integer overflow. If the value of `ecx` is large enough, the calculation `ebx + ecx * 4` can overflow, resulting in an incorrect memory address being accessed. This often leads to program crashes or unpredictable behavior.

## Solution
The solution provided in `bugSolution.asm` addresses this issue by adding checks before the memory access to ensure that the calculated address remains within the valid range.  This approach prevents the overflow error and enhances the code's robustness. 