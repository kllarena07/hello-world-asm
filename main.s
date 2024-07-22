.global _main
.align 4

_main:
  b _say_hello
  b _terminate

_say_hello:
  mov X0, #1
  adr X1, helloworld
  mov X2, #16
  mov X16, #4
  svc 0

_terminate:
  mov X0, #0
  mov X16, #1
  svc 0

helloworld: .ascii "Hello M1-World!\n"
