module a01_array;
import std::io;

fn int main(String[] args)
{
	// Explicit int[3]
	int[3] abc = { 1,2,3};

	// Implicit int[3]
	int[*] bcd = { 1,2,3};
	io::printn(abc);
	io::printn("~~~~~~~");
	io::printn("\nImplicit");
	io::printn(bcd);
	return 0;
}
