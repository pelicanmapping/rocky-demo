# :mountain: rocky-demo
Here is a simple template project that demonstrates how to build a [Rocky](https://github.com/pelicanmapping/rocky) application!

### Step 1 - Install vcpkg package manager
[Follow the instructions here](https://vcpkg.io/en/getting-started.html) to install vcpkg on your system.

### Step 2 - Set up the project to use vcpkg
Set your `VCPKG_DIR` environment variable to your vcpkg install location. Then run the included bootstrap script.
```bat
set VCPKG_DIR=C:\vcpkg\install
bootstrap-vcpkg.bat
```
The script will pick defaults for you and ask you to confirm them. You can change them on the command line if you like.
Just press 'N' and you will see the options.

You can always use the CMake GUI application instead if you like - just be sure to pick the vcpkg toolchain!

The initial bootstrap may take a while as vcpkg builds all your dependencies.

### Step 3 - Build the project
Load the `rocky-demo.sln` file in your build folder and build the INSTALL target. The executable should end up in your install folder.
```bat
rocky-demo.exe
```

Enjoy :smile:
