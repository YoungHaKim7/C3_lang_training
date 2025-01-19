module a01_enum;
import std::io;

enum Foo
{
	ABC,
	BCD,
	EFG,
}

fn void main()
{
	int a = 1234;
	uint128 b = 0xFFEEDDCC_BBAA9988_77665544_33221100;
	Foo foo = BCD;
	io::printfn("a: %s, b: %d, foo: %s", a, b, foo);
}
