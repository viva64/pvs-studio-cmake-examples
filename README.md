# Examples of PVS-Studio integration in CMake (CLion/QtCreator)

[Go to description of examples](#Description-of-examples)

PVS-Studio CMake module (**PVS-Studio.cmake**) can be used to integrate [PVS-Studio](https://www.viva64.com/en/pvs-studio/) analysis into CMake-based C and C++ cross-platform projects under Linux, Windows and macOS. This integration is generally build-system independent, however, several specific options work only under certain CMake generators. You can also use build-system specific analyzer integration (for example, PVS-Studio_Cmd for MSBuild projects under Windows), or integrate the analyzer directly into a build system.

A few examples in this repository will help you to learn how to use the PVS-Studio CMake module in your **CMakeLists.txt** properly. 

PVS-Studio CMake module uses the ```pvs_studio_add_target``` function to add a custom PVS-Studio target, which will be used to run the analysis. The detailed description of all available parameters of ```pvs_studio_add_target``` function is available in the comments inside the *PVS-Studio.cmake* file (search for ```pvs_studio_add_target``` function).

### Pay special attention:

```
TARGET example.analyze ALL
```

The parameter ```ALL``` is optional. If it's specified, the project analysis will be performed using the *Build All* command. Without this parameter, you should run the analysis using the *Build TARGET* command.

```
OUTPUT FORMAT errorfile
```

The ```OUTPUT``` parameter is optional. If you work in CLion or QtCreator, then you can see the analyzer warnings immediately in the used IDE with this parameter. Otherwise, the analyzer warnings will only be saved to a file.

### Extra parameters:

```
PREPROCESSOR gcc
```

You can tell the analyzer to use a particular preprocessor. Possible values are: ```gcc```, ```clang```.

```
CXX_FLAGS ${PREPROCESSOR_ADDITIONAL_FLAGS}
C_FLAGS ${PREPROCESSOR_ADDITIONAL_FLAGS}
```

Sometimes CMake can't pass some compiler parameters to the analyzer, then you can do it manually, using these parameters.

```
CONFIG "/path/to/PVS-Studio.cfg")
```

If you store the analyzer settings in a separate file, you can specify it in this way.

```
COMPILE_COMMANDS
```

Use this option instead of the 'ANALYZE' option to use compile_commands.json instead of project targets (specified by the 'ANALYZE' option) for determining files for analysis. Set CMAKE_EXPORT_COMPILE_COMMANDS variable to enable the generation of compile_commands.json (available only for Makefile and Ninja generators).

The analyzer integration with our module is convenient if you want to use incremental analysis in the IDE (CLion/QtCreator). For a quick check of a project or the server analysis automatization you can use another method. 

### Analysis without integration

To check a CMake project, you can use the JSON Compilation Database. To obtain the *compile_commands.json* file required by the analyzer, add a flag to the Cmake call:

```
cmake -DCMAKE_EXPORT_COMPILE_COMMANDS=On <src-tree-root>
```
CMake supports the generation of JSON Compilation Database for Unix Makefiles. 

The analysis starts by the following commands:

```
pvs-studio-analyzer analyze -o /path/to/project.log -e /path/to/exclude-path -j<N>
plog-converter -a GA:1,2 -t tasklist -o /path/to/project.tasks /path/to/project.log
```

### Description-of-examples
- [example-01](example-1) Analysis of a simple project containing one file.
- [example-02](example-2) Analysis of a simple project with a library connection
- [example-03](example-3) Analyzing a project with build subdirectories
- [example-04](example-4) Analyzing a project and its dependencies
- [example-05](example-5) Project analysis with output of Tasklist format report
- [example-06](example-6) Analysis of individual project modules and output of several reports
- [example-07](example-7) Analyzing a project with compile_commands.json
- [example-08](example-8) Project analysis using suppressed warnings database
- [example-09](example-9) Analyzing a project using the pvs-studio config file and setting targets to be built before running the analysis.
- [example-10](example-10) Analyzing a project using pvs-studio-analyzer flags
- [example-11](example-11) Project analysis with selection of several diagnostic groups (for example GA, MISRA)
- [example-12](example-12) Analyzing individual source files
- [example-13](example-13) Project analysis using plog-converter flags.
