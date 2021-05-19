# lcat - Lisp cat

## How? What? Why?

`lcat` will just print the contents of a file (or many files). Line breaks are not added (because that would probably invalidate the "concatenate" meaning of "cat").

    % lcat somefile.txt someotherfile.txt

## How to install

### From the source code

Install [SBCL](https://www.sbcl.org), then:

**using Fossil:**

    % fossil clone https://code.rosaelefanten.org/lcat
    % cd lcat/src
    % sbcl --no-userinit --no-sysinit --load build.lisp

**using Git:**

    % git clone https://github.com/dertuxmalwieder/lcat
    % cd lcat/src
    % sbcl --no-userinit --no-sysinit --load build.lisp

### Elsewhere

* Nobody has provided any packages for `lcat` yet. You can help!

## How to contribute code

1. Read and agree to the [Code of ~~Conduct~~ Merit](CODE_OF_CONDUCT.md).
2. Implicitly agree to the [LICENSE](LICENSE). Nobody reads those. I don't either.
3. Find out if anyone has filed a GitHub Issue or even sent a Pull Request yet. Act accordingly.
4. Send me a patch, either via e-mail (`git at tuxproject dot de`) or as a GitHub Pull Request. Note that GitHub only provides a mirror, so you'd double my work if you choose the latter. :-)

If you do that well (and regularly) enough, I'll probably grant you commit access to the upstream Fossil repository.

## Donations

Writing this software and keeping it available is eating some of the time which most people would spend with their friends. Naturally, I absolutely accept financial compensation.

* PayPal: [GebtmireuerGeld](https://paypal.me/gebtmireuergeld)
* Liberapay: [Cthulhux](https://liberapay.com/Cthulhux/donate)

Thank you.

## Contact

* Twitter: [@tux0r](https://twitter.com/tux0r)
* Matrix: @Cthulhux:matrix.org
