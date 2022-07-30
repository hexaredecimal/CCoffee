import "<ctypes.coffee.h>"
import "<stdlib.h>"
import "<stdio.h>"



_main = (argc, argv) -> 

    ptr = fopen(cStr("File.TXT"), cStr("r"))

    if ptr == NULL
        cout << "Cannot open file " << endl
        return 0; 

    loop 
        chr = fgetc(ptr)

        printf(cStr("%c"), chr)

        if chr == EOF
            break

    fclose(ptr)
    0
