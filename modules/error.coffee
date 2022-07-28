

error_ok = 0
error_div_by_zero = 1
error_not_implemented = 3


getErrorMessage = (errorNo) ->
    if errorNo == error_ok
      mgs0 = __PRETTY_FUNCTION__ + ": No error encountered"
      return mgs0
    
    if errorNo == error_not_implemented 
      mgs1 =  __PRETTY_FUNCTION__ +  " :Error: not yet implemented " 
      return mgs1

        




