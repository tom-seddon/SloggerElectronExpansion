Partly-commented rebuildable code for Slogger's Electron Expansion 2.0
ROM.

Builds a ROM exactly matching the Electron Expansion 2.02 ROM.

# Build

(You don't actually need to do this! The original ROM is in the repo:
`originals/Electron-Expansion-v2.02.rom`.)

## Build prerequisites

- Python 3.x
- [64tass](https://sourceforge.net/projects/tass64/) on PATH
- GNU Make

## Clone the repo

This repo has submodules. Clone it with `--recursive`:

    git clone --recursive https://github.com/tom-seddon/SloggerElectronExpansion
	
Alternatively, if you already cloned it non-recursively, you can do
the following from inside the working copy:

    git submodule init
	git submodule update

## Build

To build, run `make` from the root of the working copy.

The output is a .rom file, `build/Electron-Expansion-v2.02.rom`.
