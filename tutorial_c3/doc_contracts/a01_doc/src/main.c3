module a01_doc;
import std::io;

fn void mycustom(int x) {
	io::printn(x);
}

fn void bar(int num_foo)
{
    io::printfn("%d", num_foo);
}

fn int main(String[] args)
{
	bar(10);
	mycustom(3);
	io::printn("Hello, World!");
	return 0;
}
