# C++ Logger

Simple logger using C++.

## Table of contents

- [Project structure](#project-structure)
- [Features](#features)
- [Requirements](#requirements)
- [Compilation](#compilation)
- [Running](#running)
- [Tests](#tests)
- [License](#license)

## Project structure

This project is structured in the following directories:

- `cmake`: useful CMake files.
- `docs`: project documentation.
- `src`: source code of the project.
- `tests`: files related with tests.

## Features

The logger of this project is a simple logger that allows to log messages during the execution of the program. This log uses a stream of type `std::ostream`, so the user can choose the output stream to log messages (console, file, ...).

The logger features the following levels:

- None: there's no logging (calling any method to log a message has no effect).
- Fatal: logs only fatal messages.
- Error: logs error messages and higher level messages (for example, if the logger is defined with this level, fatal messages are also logged but warning messages are ignored).
- Warning: logs warnings messages and higher level messages.
- Info: logs information messages and higher level messages.
- Debug: logs debug messages and higher level messages.
- Verbose: logs verbose messages and higher level messages.

The logger is implemented [here](./src/logger/). An example of how to use it can be seen [here](./src/main.cpp), which results in the image below.

!["Example"](./docs/assets/example-log.png)

## Requirements

Necessary tools:

- CMake: system to manage the build process.
- C++ compiler: for software compilation.

## Compilation

The CMake options for configuration of this project are:

| CMake option | Description | Default value |
| --- | --- | --- |
| BUILD_TESTS | Build unit tests | OFF |

The following commands can be utilized to configure the project (example for Debug configuration):

```sh
$ cd <project-directory>
$ mkdir build-debug
$ cd build-debug
$ cmake .. -DCMAKE_BUILD_TYPE=Debug
```

To compile the software, use the following command:

```sh
$ cmake --build . -j 4
```

## Running

After compiling the project, an executable file is created and can be run using the following command (note that the executable may be located in a different directory, depending on the configuration generator):

```sh
$ ./src/Debug/SimpleLogger
```

## Tests

To run the unit tests, use the commands below (note that it is necessary to configure CMake with `BUILD_TESTS` option to ON):

```sh
$ cd <project-directory>
$ mkdir build-debug
$ cd build-debug
$ cmake .. -DCMAKE_BUILD_TYPE=Debug -DBUILD_TESTS=ON
$ cmake --build . -j 4
$ ctest
```

## License

Licensed under the [MIT license](./LICENSE).