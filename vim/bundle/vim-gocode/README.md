vim-gocode
==========

All credit goes to [nsf/code](http://github.com/nsf/gocode)

## Commands

* **:CurPkg** takes no argument and print the current file's package

*Example* `:CurPkg` in the `$GOPATH/src/github.com/Blackrush/gofus/main.go` file will print `github.com/Blackrush/gofus`

* **:RelPkg** takes one argument, a relative package path, and print it as a full package path

*Example* `:RelPkg ../pkg/child` in the `$GOPATH/src/github.com/Blackrush/gofus/main.go` file will print `github.com/Blackrush/pkg/child`

* **:GoInstall** takes one argument, a relative package path, install it or print compilation errors otherwise

*Example* `:GoInstall ../pkg/child` with current working directory `$GOPATH/src/github.com/Blackrush/gofus`
will try to install the `github.com/Blackrush/pkg/child` package

* **:GoCurInstall** takes no argument and try to install the current file's package

*Example* `:GoCurInstall` in the file `$GOPATH/src/github.com/Blackrush/gofus/main.go` will try to install the
package `github.com/Blackrush/gofus`

* **:GoTest** takes one argument, a relative package path, test it and print its output

*Example* `:GoTest ../pkg/child` with current working directory `$GOPATH/src/github.com/Blackrush/gofus`
will try to test the `github.com/Blackrush/pkg/child` package

* **:GoCurTest** takes no argument and try to test the current file's package

*Example* `:GoCurTest` in the file `$GOPATH/src/github.com/Blackrush/gofus/main.go` will try to test the
package `github.com/Blackrush/gofus`

* **:GoImport**, **:GoImportAs** and **:GoDrop** are equivalent of original **:Import**, **:ImportAs** and **:Drop**
but takes all a relative package path to the current working directory

See [#1](https://github.com/Blackrush/vim-gocode/issues/1) to see future commands implementation.

## Installation

Make sure you have installed [gocode](https://github.com/nsf/gocode) before installing this plugin :

```bash
go get github.com/nsf/gocode
```

### Vundle

Add this line to your ~/.vimrc configuration file :

    Bundle 'Blackrush/vim-gocode'

And then run vim :

    vim +BundleInstall

If you are running under OS X, you might want to read [these instructions](https://github.com/Blackrush/vim-gocode/wiki/Installation-on-OS-X) to properly install it.

### Pathogen

    cd ~/.vim/bundle
    git clone git@github.com:Blackrush/vim-gocode.git
