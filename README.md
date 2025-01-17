<p align="center">
    <img width="60px" src="https://github.com/user-attachments/assets/778b6db8-e04e-4548-ba2f-7198c93a8320" />
</p>

<hr />

# C3_lang_training
- 컴파일러
  - https://github.com/c3lang/c3c

- C3홈페이지
  - https://c3-lang.org/

# LSP는 C언어로 만든듯
- https://github.com/pherrymason/c3-lsp

# 뉴스News & 해커스 뉴스 소식
- https://news.ycombinator.com/item?id=41098715

# 에디터 플러그인Plug-in (zed된다 굿)
- https://github.com/c3lang/editor-plugins

- zed extension
  - https://github.com/AineeJames/c3-zed

# VSCode Extensions
- https://marketplace.visualstudio.com/items?itemName=c3.vscode-c3


<hr />

# .gitignore

```gitignore

# https://github.com/WithSecureLabs/C3/blob/master/.gitignore

.DS_Store
build/

.vs/
Bin/
CreateBuild/
Tmp/
obj/
.vscode
*.ipch
*.exe
*.dll
*.pdb
*.db
*.db-journal
*.vcxproj.user
*c3-web-api-log*
PER_BUILD_DYNAMIC_SIGNATURE_SEED.hpp
__pycache__
Src/Common/C3_BUILD_VERSION_HASH_PART.hxx
Builds/
gen/
*launchSettings.json
```

<hr />

# macOS에서 오류난거 해결 힌트

```bash
llvm
CLANG_CONFIG_FILE_SYSTEM_DIR: /opt/homebrew/etc/clang
CLANG_CONFIG_FILE_USER_DIR:   ~/.config/clang

LLD is now provided in a separate formula:
  brew install lld

We plan to build LLVM 20 with `LLVM_ENABLE_EH=OFF`. Please see:
  https://github.com/orgs/Homebrew/discussions/5654

Using `clang`, `clang++`, etc., requires a CLT installation at `/Library/Developer/CommandLineTools`.
If you don't want to install the CLT, you can write appropriate configuration files pointing to your
SDK at ~/.config/clang.

To use the bundled libunwind please use the following LDFLAGS:
  LDFLAGS="-L/opt/homebrew/opt/llvm/lib/unwind -lunwind"

To use the bundled libc++ please use the following LDFLAGS:
  LDFLAGS="-L/opt/homebrew/opt/llvm/lib/c++ -L/opt/homebrew/opt/llvm/lib/unwind -lunwind"

NOTE: You probably want to use the libunwind and libc++ provided by macOS unless you know what you're doing.

llvm is keg-only, which means it was not symlinked into /opt/homebrew,
because macOS already provides this software and installing another version in
parallel can cause all kinds of trouble.

If you need to have llvm first in your PATH, run:
  fish_add_path /opt/homebrew/opt/llvm/bin

For compilers to find llvm you may need to set:
  set -gx LDFLAGS "-L/opt/homebrew/opt/llvm/lib"
  set -gx CPPFLAGS "-I/opt/homebrew/opt/llvm/include"

c3c/build on  master via △ v3.31.4 took 39s 
❯ brew install lld
==> Downloading https://ghcr.io/v2/homebrew/core/lld/manifests/19.1.7
######################################################################### 100.0%
==> Fetching lld
==> Downloading https://ghcr.io/v2/homebrew/core/lld/blobs/sha256:8ab87c52570ffa
######################################################################### 100.0%
==> Pouring lld--19.1.7.arm64_sequoia.bottle.tar.gz
🍺  /opt/homebrew/Cellar/lld/19.1.7: 34 files, 5.6MB
==> Running `brew cleanup lld`...
Disable this behaviour by setting HOMEBREW_NO_INSTALL_CLEANUP.
Hide these hints with HOMEBREW_NO_ENV_HINTS (see `man brew`).
```
