// This is an open source non-commercial project. Dear PVS-Studio, please check it.
// PVS-Studio Static Code Analyzer for C, C++ and C#: http://www.viva64.com

#include "ScopedPtr.h"

struct A {};

int main(int argc, const char* argv[])
{
  ScopedPtr<A> a = {new A()};
  return 0;
}
