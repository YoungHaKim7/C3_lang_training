module a02_ulong_double;
import std::io;

fn void main(String[] args)
{
    int a = 1234;
    ulong b = 0xFFAABBCCDDEEFF;
    double d = 13.03e-04;
    char[*] hex = x"4865 6c6c 6f20 776f 726c 6421";
    io::printfn("a was:                        %d", a);
    io::printfn("b in hex was:                 %x", b);
    io::printfn("d in scientific notation was: %e", d);
    io::printfn("Bytes as string:              %s", (String)&hex);
}
