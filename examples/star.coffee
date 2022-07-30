import "<ctypes.coffee.h>"

_main = (argc, argv) ->
    i = 5
    while i >= 1
        j = 1
        while j <= i
            cout << "*"
            j++ 
        i--
        cout << endl
    0