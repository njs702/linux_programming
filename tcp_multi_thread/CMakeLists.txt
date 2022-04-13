cmake_minimum_required(VERSION 3.1 )

project(webserver)

set(SOURCE 
    ./source/clnt_connection.c
    ./source/send_data.c
    ./source/send_error.c
    ./source/send_ok.c
    ./source/webserver.c 
)

add_executable(${PROJECT_NAME} ${SOURCE})

set(THREADS_PREFER_PTHREAD_FLAG ON)
find_package(Threads REQUIRED)
target_link_libraries(webserver PRIVATE Threads::Threads)

# ADD_LIBRARY(threadModule
#     ./source/clnt_connection.c
#     ./source/send_data.c
#     ./source/send_error.c
#     ./source/send_ok.c
#     ./source/webserver.c
# )

# target_link_libraries(threadModule -lpthread)