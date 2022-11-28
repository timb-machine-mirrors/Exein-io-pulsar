FROM ghcr.io/cross-rs/riscv64gc-unknown-linux-gnu:main
RUN ln -snf /usr/share/zoneinfo/Europe/Rome /etc/localtime && echo Europe/Rome > /etc/timezone && \
    apt update && apt install -y lsb-release wget software-properties-common gnupg && \
    wget https://apt.llvm.org/llvm.sh && chmod +x llvm.sh && ./llvm.sh 15 && \
    ln -s /usr/bin/clang-15 /usr/bin/clang && \
    ln -s /usr/bin/llvm-strip-15 /usr/bin/llvm-strip