# vim-expand

Allows you to filter your current line or visual selection through the [expand][] function in place via the `:Expand` command. This allows you to write things like the following.

```javascript
function {add,remove}User() {
    // ...
}
```

And expand it to this.

```javascript
function addUser() {
    // ...
}

function removeUser() {
    // ...
}
```

You can also use things like `{1..10}` to iterate through numbers as well as environment variables such as `$HOME`, so it works much like bash brace and variable expansion. Read the [expand][] documentation for all the details, but basically it supports a **lot** of things.

## Usage

Simply execute `:Expand` on your desired line or visually select a block of lines, such as the function above, and then execute `:Expand`. Vim will automatically populate the range in front of the command for you. Of course you can enter a manual range with `:1,3Expand`.

## Installation

Add `Olical/vim-expand` to your favourite plugin manager such as [vim-plug][], which I'm currently using in my [dotfiles][].

```viml
Plug 'Olical/vim-expand'
```

## License

The [Unlicense][], so you can use this however you want, wherever you want. The full license file can be found in this directory within the `UNLICENSE` file.

## Author

[Oliver Caldwell][] / [@OliverCaldwell][]

[expand]: http://vimdoc.sourceforge.net/htmldoc/eval.html#expand%28%29
[vim-plug]: https://github.com/junegunn/vim-plug
[dotfiles]: https://github.com/Olical/dotfiles
[unlicense]: http://unlicense.org/
[Oliver Caldwell]: http://oli.me.uk/
[@OliverCaldwell]: https://twitter.com/OliverCaldwell
