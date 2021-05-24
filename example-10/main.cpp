// This is a personal academic project. Dear PVS-Studio, please check it.
// PVS-Studio Static Code Analyzer for C, C++ and C#: http://www.viva64.com

#include"subdir/lib.h"

int main(int argc, const char* argv[])
{
    if (argc != argc) {
        return 1;
    }
	else {
		return foo();
	}
}
