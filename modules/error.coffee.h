//ERROR_COFFEE
#include <iostream>

using namespace std;

#define var //
//start global scope

  auto error_ok = 0;

  auto error_div_by_zero = 1;

  auto error_not_implemented = 3;

  auto getErrorMessage = [](auto errorNo) {
    if (errorNo == error_ok) {
      auto mgs0 = __PRETTY_FUNCTION__ + string(": No error encountered");
      return mgs0;
    }
    if (errorNo == error_not_implemented) {
      auto mgs1 = __PRETTY_FUNCTION__ + string(" :Error: not yet implemented ");
      return mgs1;
    }
  };
//end global scope

