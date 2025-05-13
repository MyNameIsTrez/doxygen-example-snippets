//! [one]
int one() {
    return 1;
}
//! [one]

int hidden() {
    return 42;
}

//! [two]
int two() {
    return 2;
}
//! [two]

int main() {
    return one() + two();
}
