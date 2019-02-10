# Image::PNG::Inflated [![build status][TRAVISIMG]][TRAVIS]

Creates PNG images from raw RGBA data of depth 8, chunking the data into
non-compressed 64k blocks.


## Synopsis

```
use Image::PNG::Inflated;
use Image::RGBA::Fun;

# grayscale gradient
my $grad = blob8.new(map { |($_, $_, $_, 255) }, ^256);
my $blob = [~] $grad xx 64;             # ^--- a opaque pixel

spurt 'grayscale.png', to-png($blob, 256, 64);
                            # width --^    ^-- height

# our most beloved butterfly
my $img = rgba-read-textfile('camelia.txt');
spurt 'camelia.png', to-png($img);
```

The only exported symbol is the `&to-png` subroutine.


## Bugs and Development

Development happens [at GitHub][SOURCE]. If you found a bug or have a feature
request, use the [issue tracker][ISSUES] over there.


## Copyright and License

Copyright (C) 2015, 2017, 2019 cygx <cygx@cpan.org>

Distributed under the [Boost Software License, Version 1.0][LICENSE]


[TRAVIS]:       https://travis-ci.org/cygx/p6-image-png-inflated
[TRAVISIMG]:    https://travis-ci.org/cygx/p6-image-png-inflated.svg?branch=master
[SOURCE]:       https://github.com/cygx/p6-image-png-inflated
[ISSUES]:       https://github.com/cygx/p6-image-png-inflated/issues
[LICENSE]:      http://www.boost.org/LICENSE_1_0.txt
