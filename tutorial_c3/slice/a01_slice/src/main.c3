module a01_slice;
import std::io;

fn int main(String[] args)
{
	int[3] abc = {1,2,3};
	io::printn(abc);

	io::printn("A slice pointing to abc with length 3");
	int[] slice = &abc;
	io::printn(slice);
	return 0;
}
