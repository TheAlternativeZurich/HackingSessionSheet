# Hacking Session
This is a repo to keep track of changes made to the exercise sheet during the preparation for the hacking session, which is an event organized in spring semester 2017 (and hopefully future) LinuxDays.

## Naming conventions
In order for the buildscript to include your files into the final pdf, please name your files according to `[0-9]*-*.md`. E.g. `00-basics.md`. The files will appear in alphabetical order in the final pdf.

## Building
To build the exercise session pdf and the solutions to the exercises, execute the `./build.sh` file in the project root. If you want to look at the tex output instead, pass `--tex` as flag to the buildscript.

## Dependencies

* pandoc
* xelatex engine
