# POSIX Zettelkasten

This is a single-script implementation of a text-based Zettelkasten.
There is a single multicommand following the Busybox approach that
relies on the names of hardlinks to pick the right path for the command
execution.


## Setup

In order to set up this program, take the following steps:

* Run `setup.sh` to setup hard links to `zet`.
* Put `zet`, `zetf`, `zetp`, `zetg` on the `$PATH`. `setup.py` can do that for
  you by putting copying these files into `usr/local/bin`.
* Export `$EDITOR` to set your favorite text editor (`Vi` is the default one).
* Export `$JOURNAL` to tell where you like your zettel to live.


## Usage

Here are the options:

* Use `zet` to create a new entry in the zettel. 
* Use `zetf` to find an entry through an interactive list (with `fzf`).
* Use `zetp` to paste full file paths based on entry names to Vi/Vim/Neovim
  buffer.
* Use `zetg` to grep entries for their contents and put their names in the
  buffer.

`zetp` matches file names and `zetg` matches file contents. Both command accept
positional arguments of standard input (FD1).

I intend both to be used inside Vi and its derivatives to paste and create
links to other entries in Zettelkasten. Zettel links can then be navigated with
`gf` in Vi normal mode. You can switch back and forth between Vi buffers.

Use magic Vi wands. Type in query names in Vi buffer and type `!!zetp` or
`!!zetg` in the normal mode. This will insert links if they're returned.

