# Embedded Template: C/C++

An empty project template for C/C++ projects.

## Usage

You must have the appropriate toolchain installed to use the `build.sh` script. If ninja is installed, it will be used

For nuking the device flash, refer to official documentation.

```
1. setup.sh (initialise venv, requirements, and submodules)
2. build.sh (generate build system, build the project)
3. flash.sh (copy program to device)
```

Something like `minicom -D /dev/ttyACM0 -b 112500` can be used to open REPL.

## Includes

The `include` directory is expected to be used for any project headers.

## Flashing, Debugging, Resetting

The template uses `pyOCD` to interface with a hardware debugger to interface with the target board.
You can see a quick help print by running `pyocd --help` after sourcing the project venv.

Reason for using `pyOCD` is that it's easier to pull in via a venv, and doesn't require multilib, unlike
`openOCD`. So this solution works for strictly 64-bit only systems as well.

[Documentation](https://pyocd.io/docs/index)

## License

CC0 | No Rights Reserved

Submodules and payloads may be encumbered.
