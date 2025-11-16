module a01_c3_demo;
import std::io;

// project.json + `c3c run .` => integrated build, no hand written gcc line.

typedef Millis = int;
typedef Seconds = int;

struct Vec2 { int x; int y; }

// Lightweight operator overloading : Vec2 + Vec2

macro Vec2 Vec2.add(self, Vec2 b) @operator(+) {
	return { .x = self.x + b.x, .y = self.y + b.y };
}

// Contract: pre/post-conditions on a function.
<*
  @require xs.len > 0 : "slece must be non-empty"
  @ensure return >= 0
*>

fn int sum(int[] xs) {
	int acc = 0;
	foreach (v : xs) acc += v;  // built-in slice + foreach
	return acc;
}

// C ABI interop
extern fn int puts(char* s);

// Optionals + defer try / defer catch
fn void? ping(bool ok) {
	defer try io::printfn("P02 - defer try: normal result");
	defer (catch err) io::printfn("P02 - defer catch : %s", err);

	if (!ok) return io::FILE_NOT_FOUND?; // fault path
	puts("P02 - C ABI call via C3"); // happy path
	return;
}

fn int main(String[] args)
{
	int[3] data = { 1, 2, 3};
	int[] slice = data[..];  // slice : pointer + length bundled
	int total = sum(slice);

	Vec2 a = { .x = 1, .y = 2 };
	Vec2 b = { .x = 3, .y = 4 };
	Vec2 r = a + b;

	Seconds s = 2;
	Millis ms = (Millis)(s * 1000);   // distinct-but-related units

	if (catch err = ping(false)) {
		io::printfn("P02 - main saw fault : %s", err);
	}

	io::printfn("P02 - total=%d, v=(%d, %d), %d s -> %d ms",
				total, r.x, r.y, (int)s, (int)ms);

	io::printfn("C3 Hello, World!");
	return 0;
}
