module a01_val;
import std::io;

struct Foo {
    int x;
}

fn int main(String[] args)
{
    int x = 42; // Initialize x with a value
    // int y @noint;

    Foo x1;      // Declare a Foo object
    x1.x = x;    // Assign the value of x to the x field of Foo

    io::printn("x struct : ");
    io::printn(x1.x); // Print the value of x1.x
    return 0;
}
