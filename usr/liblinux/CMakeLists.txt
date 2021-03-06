project(liblinux LANGUAGES C ASM)

set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -O3 -fno-stack-protector")

add_library(linux
    src/arch/x86/crt0.S
    src/arpa/inet.c
    src/epoll.c
    src/errno.c
    src/socket.c
    src/stdio.c
    src/stdlib.c
    src/string/strerror.c
    src/string/strlen.c
)

target_include_directories(linux PUBLIC
    $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include>
    $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/../../include/uapi>
    $<INSTALL_INTERFACE:include>
    PRIVATE src)

target_link_libraries(linux PRIVATE
    manticore
)
