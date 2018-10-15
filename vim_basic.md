
VIM Reference
-------------

The following commands are executed in command mode.

Copy & Paste
------------
Press v. (To enter visual mode so you can highlight stuff)

Use the arrow keys (or h,j,k,l,w,b,$) to highlight

Press y to yank, p to paste. (shift-p to open up a line above and paste)

Copy a word                         `yw`
Copy a line                         `yy`
Copy from cursor to end of line     `y$`


Copy & Paste (with Registers)
-----------------------------
Press v. (To enter visual mode so you can highlight stuff)

Use the arrow keys (or h,j,k,l,w,b,$) to highlight

Type "ay to yank into register a.
Type "ap to paste from register a.


Deleting
--------
Press v. (To enter visual mode so you can highlight stuff)

Use the arrow keys (or h,j,k,l,w,b,$) keys to higlight and press d

Delete character                `x`
Delete word                     `dw`
Delete word and insert text     `cw`
Delete line                     `dd`
Delete to end of line           `d$`


Indenting
---------
Press v and then arrow keys (or h,j,k,l,w,$) to highlight lines of text.

Type > or < to indent right or left.

(to indent more, type 2> or 3>)

(to change your indenting/tabbing to use spaces and not tabs, type :set et)
(to set auto-indenting, type :set ai)
(to set the tab-size, type :set ts=2 (or whatever number you want)
(also, for tabbing-size, set shiftwidth (>) by typing :set sw=2)


Navigation
----------

| Direction                   | Key  |
| --------------------------- |------|
| Go up                       |  k   |
| Go down                     |  j   |
| Go left                     |  h   |
| Go right                    |  l   |
| Go right a word             |  w   |
| Go left a word              |  b   |
| Go to beginning of file     |  gg  |
| Go to end of file           |  G   |
| Go 22 lines down            |  22j |
| Go to end of line           |  $   |
| Go to beginning of          |  ^   |
non-whitespace part of line
| Go right 5 words            |  5w  |


Insert Text
-----------
Insert at cursor                      i
Insert after cursor                   a     (useful when at the end of a line)
Open a line below cursor and insert   o
Open a line above cursor and insert   shift-o


Quitting VIM 
------------
Type :q to quit the editor.


Saving a file
-------------
Type :w to write to the file.


Search & Replace
----------------
`/search` and `<ENTER>`

Find next       `n`

Find previous   `N`

Turn off highlighting `:noh`

Find next instance of a word that your
cursor is over    `*`

### Basic:

| Command                  | Description                                              |
| -------------            |-------------                                             |
| `:s/foo/bar/g`           | Change each 'foo' to 'bar' in the current line.          |
| `:%s/foo/bar/g`          | Change each 'foo' to 'bar' in all the lines.             |
| `:%s/\<foo\>/bar/gc`     | Change only whole words exactly matching 'foo' to 'bar'. |
| `:,$s/search/replace/gc` | Search and replace from current line to end of file      |

### Advanced:

`:5,12s/foo/bar/g` 	Change each 'foo' to 'bar' for all lines from line 5 to line 12 (inclusive).

`:'a,'bs/foo/bar/g` 	Change each 'foo' to 'bar' for all lines from mark a to mark b inclusive (see Note below).

`:.,$s/foo/bar/g` 	Change each 'foo' to 'bar' for all lines from the current line (.) to the last line ($) inclusive.

`:.,+2s/foo/bar/g` 	Change each 'foo' to 'bar' for the current line (.) and the two next lines (+2).

`:g/^baz/s/foo/bar/g` 	Change each 'foo' to 'bar' in each line starting with 'baz'. 


Shell (Exit temporarily to a shell)
-----------------------------------
Type  `:sh`

To come back to VIM  from the shell type  exit 


Split Window Editing
--------------------
Type :sp followed by the filename.

Go to window above  ctrl-w-k
Go to window below  ctrl-w-j

Maximize window size  ctrl-w  _ 
(the underscore is NOT  pressed at the same time as the ctrl-w)

Make all windows equal size  ctrl-w =
(the equals sign is NOT pressed at the same time as the ctrl-w)


Undo a Command 
--------------
Undo                              u
Redo an undo                      ctrl-r


View Directory & File Explorer
------------------------------
Type :S  (the S is uppercase)

This will split the window and open up a file explorer.  
Use the <enter> key to select directories or to open files.
