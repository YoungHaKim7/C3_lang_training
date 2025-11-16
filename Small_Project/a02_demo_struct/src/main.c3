module a02_demo_struct;
import std::io;

interface Object
{
    fn String as_str();
}

struct Person (Object)
{
    String first;
    String last;
    int age;
}

fn String Person.as_str(Person* self) @dynamic
{
    DString str;
    str.appendf("%s %s (age %d)", self.first, self.last, self.age);
    return str.copy_str(allocator::heap());
}

<*
Factorial.
@pure
@param i
@require i >= 0
@ensure return >= 1
*>
fn int fact(int i = 0) {
  if (i == 0) {
    return 1;
  } else {
    return i * fact(i: i - 1);
  }
}

// fn int main(String[] args)
fn int main()
{
    Person p = {
        .first = "John",
        .last = "Doe",
        .age = 52,
    };
    io::printn(p.as_str());
	io::printn("Hello, World!");
	return 0;
}
