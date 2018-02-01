# Examples of PVS-Studio integration in CMake (CLion/QtCreator)

For [PVS-Studio](https://www.viva64.com/en/pvs-studio/) analyzer integration into your project, you can use the **PVS-Studio.cmake** module. 

A few examples in this repository will help you learn how to use the CMake module in your **CMakeLists.txt** properly. 

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

You can tell the analyzer to use a particular preprocessor. Possible values are: ```gcc```, ```clang```, ```keil```.

```
CXX_FLAGS ${PREPROCESSOR_ADDITIONAL_FLAGS}
C_FLAGS ${PREPROCESSOR_ADDITIONAL_FLAGS}
```

Sometimes CMake can't pass some compiler parameters to the analyzer, then you can do it manually, using these parameters.

```
CONFIG "/path/to/PVS-Studio.cfg")
```

If you store the analyzer settings in a separate file, you can specify it in this way.

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
