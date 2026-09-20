// https://ce-programming.github.io/toolchain/libraries/index.html
#include <keypadc.h>
#include <graphx.h>
#include <tice.h>
#include <debug.h>

#include "game.h"


int main() { 
	dbg_ClearConsole();

	gfx_Begin();
	
	init();
	
	
	gfx_End();
	return 0;
}