#include "square.h"
#include <cstddef>
#include <cstdio>

extern "C" {

size_t __wrap_square(size_t a) {
  printf("The argument to square was spied to be %zu\n", a);
  return square(a);
}
}
