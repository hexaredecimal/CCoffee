//DEBUG_COFFEE
#include <iostream>

using namespace std;

#define var //
//start global scope

  auto CPanic = [](auto msg, auto func) {
    cout << func << string(" : ") << msg << string(" : ") << __FUNCTION__;
    return 0;
  };
//end global scope

