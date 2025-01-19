module a01_structs_unions_enums_faults;
import std::io;

int theGlobal =1;

fn void foo(int x)
{
	Foo foo = getFoo(x);
	theGlobal++;
}

// Updated getFoo function to return Foo instead of int
fn Foo getFoo(int x)
{
    Foo foo;
    foo.x = x; // Assign the input value to Foo's 'x' field.
    return foo;
}

struct Foo @extern("foo")
{
	int x;
	Bar bar;
}

union Bar
{
	int i;
	double d;
}

enum Baz
{
	VALUE_1,
	VALUE_2,
}

fault Err
{
	OOPS,
	LOTS_OF_OOPS
}

fn int main(String[] args)
{
    int x = 10; // Declare and initialize 'x'
    Foo a = getFoo(x); // Declare 'a' as a Foo type and assign it the result of getFoo
    io::printn(a.x); // Print the 'x' field of the Foo object
	// Foo b = foo(40); // 실력이 안되서 안됨 공부해서 해결해 보자
	io::printn("Hello, World!");
	return 0;
}
