cmake_minimum_required(VERSION 3.16)

include(FetchContent)

# Fetch googletest
function(fetch_googletest)
    FetchContent_Declare(
        googletest
        GIT_REPOSITORY https://github.com/google/googletest.git
        GIT_TAG release-1.11.0
    )
    # For Windows: Prevent overriding the parent project's compiler/linker settings
    set(gtest_force_shared_crt ON CACHE BOOL "" FORCE)
    FetchContent_MakeAvailable(googletest)
endfunction()

# GoogleTest
if (BUILD_TESTS)
    fetch_googletest()
endif()
