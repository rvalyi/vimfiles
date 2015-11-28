# vimfiles

My vim configuration, tested on Ubuntu 14.04


## Installation

    $ sudo apt-get install vim vim-gnome
    $ git clone https://github.com/fgrehm/vimfiles.git
    $ cd vimfiles && ./setup.sh


## Available plugins (managed through [Vundle](https://github.com/gmarik/vundle))

See [`conf/plugins`](conf/plugins).


## Other features

* Deletes trailing spaces by default when saving files
* Fixed swap / backup / undo dir to keep Guards sane


## Key mappings

Please note that the leader key is currently mapped to `,`

### Plugins

* `<C-p>` fire up CtrlP plugin finder

### Custom

* `<C-s>` save current buffer on normal or insert mode

* `<Space><Space>` to maximize buffer
* `<Space>=` to restore buffer
