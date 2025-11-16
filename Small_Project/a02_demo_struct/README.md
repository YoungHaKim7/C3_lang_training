# Result


```bash
❯ c3c run
17: {
18:     DString str;
19:     str.appendf("%s %s (age %d)", self.first, self.last, self.age);
20:     return str.copy_str(allocator::heap());
                            ^^^^^^^^^^^^^^^
(/Users/gy-gyoung/my_project/Rust_Lang/9999/2222/C3_lang_training/Small_Project/a02_demo_struct/src/main.c3:20:25) Warning: 'heap' is deprecated: Use 'mem' instead..

Program linked to executable 'build/a02_demo_struct'.
Launching ./build/a02_demo_struct
John Doe (age 52)
Hello, World!
Program completed with exit code 0.

```
