module a01_base64_hex_data_literals;
import std::io;

fn int main(String[] args)
{
	// The array below contains the characters "Hello World!"
	char[*] hello_world_base64 = b64"SGVsbG8gV29ybGQh";
	io::printn(hello_world_base64);
    int a = 1234;
    ulong b = 0xFFAABBCCDDEEFF;
    double d = 13.03e-04;
    char[*] hex = x"4865 6c6c 6f20 776f 726c 6421";
    io::printn(a);
    io::printn(b);
    io::printn(d);
    io::printn(hex);
	return 0;
}
