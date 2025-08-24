# Embedded Template: C/C++

An empty project template for C/C++ projects.

## Usage

You must have the appropriate toolchain installed to use the `build.sh` script. If ninja is installed, it will be used during build system generation.

```
1. setup.sh (initialise venv, requirements, and submodules)
2. build.sh (generate build system, build the project)
3. flash.sh (copy program to device)
```
Something like `minicom -D /dev/ttyACM0 -b 115200` can be used to open the board serial console. Just make sure your IO is configured correctly.

## Includes

The `include` directory is expected to be used for any project headers.

## Flashing, Debugging, Resetting

The template uses `pyOCD` to interface with a hardware debugger to interface with the target board.
You can see a quick help print by running `pyocd --help` after sourcing the project venv.

Reason for using `pyOCD` is that it's easier to pull in via a venv, and doesn't require multilib, unlike
`openOCD`.

[Documentation](https://pyocd.io/docs/index)

### GDB

Make sure your GDB is built with at least `multitarget xml` enabled. You'll need multitarget to
have the freedom to choose your target arch, otherwise you'll have to build the specific gdb binary separately.
XML is required to properly parse communications when communicating with the target (e.g. stepping, break points, ...).

Starting gdbserver can be done with `pyocd gdbserver --target rp2040`.

Connecting to the open gdbserver can be done with the following commands:
 - `gdb build/my_project.elf`
 - `set architecture armv6-m`
 - `target remote localhost:3333`

## License

CC0 | No Rights Reserved

Submodules and payloads may be encumbered.
