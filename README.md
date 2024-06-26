# POSIX Zettelkasten

This is a single-script implementation of a text-based Zettelkasten. There is a
single multicommand following the Busybox approach that relies on the names of
hardlinks to pick the right path for the command execution.


## Setup

Check the `zet` Ansbile role in my dotfiles configuration to get an idea where
and how the script can be copied to take full advantage of it.


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


## Interactions


### Inside Vim

I use `zetg` and `zetp` inside a Vi session to paste file paths. And then
i use `gf` in the normal mode to go these files.


### From the command line

Also, one might want to open multiple files at once from the command line.
Here is how to do it.

```sh
vim -O $(zetg posix)
```

This command is going to open all files in separate splits. Without the
`-O` parameter, files would be opened is separate buffers, which is also
nice.
