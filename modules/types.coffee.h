

int Int(auto x) {
    return (int) x;
}

float Float(auto x) {
    return (float) x;
}

double Double(auto x) {
    return (double) x;
}

auto Ptr(auto mem) {
    return (void *) mem; 
}

typedef struct{
    const char * name; 
    int age; 
} Person ;

Person newPerson(const char *name, int age) {
    return (Person) {
        .name = name,
        .age = age 
    };
}