# Examples of PVS-Studio integration in CMake (CLion/QtCreator)

A few examples in this repository will help you to learn how to use the [PVS-Studio CMake module](https://github.com/viva64/pvs-studio-cmake-module) in your **CMakeLists.txt** properly. 

You can also perform analysis of C and C++ projects based on [JSON Compilation Database](https://pvs-studio.com/en/docs/manual/6557/)

[Go to description of the CMake module](https://pvs-studio.com/en/docs/manual/6591/)

### Description of examples
- [example-01](example-1) Analysis of a one-file simple project.
- [example-02](example-2) Analysis of a simple project with a library linked.
- [example-03](example-3) Analysis of a project with build subdirectories.
- [example-04](example-4) Analyzing a project and its dependencies.
- [example-05](example-5) Analysis that issues a Tasklist-format report.
- [example-06](example-6) A project's individual module analysis that issues several reports.
- [example-07](example-7) Analysis that employs compile_commands.json.
- [example-08](example-8) Analysis that uses a suppressed warning database.
- [example-09](example-9) Analysis that uses the pvs-studio config file. The example also shows how to set targets that must be built before analysis.
- [example-10](example-10) Analysis that employs pvs-studio-analyzer flags.
- [example-11](example-11) Analysis based on several selected diagnostic groups (for example GA, MISRA).
- [example-12](example-12) Analyzing individual source files.
- [example-13](example-13) Analysis that employs plog-converter flags.
