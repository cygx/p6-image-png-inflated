# Image::PNG::Inflated

Creates PNG images from raw RGBA data of depth 8, chunking the data into
uncompressed 64k blocks.


## Synopsis

```
use Image::PNG::Inflated;

my blob8 $line .= new: flat map { $_ xx 3, 0xFF }, ^0x100;
spurt 'grayscale.png', to-png(([~] $line xx 64), 256, 64);
                     # data --^          width --^    ^-- height
```


## Bugs and Development

Development happens [at GitHub][SOURCE]. If you found a bug or have a feature
request, use the [issue tracker][ISSUES] over there.


## Copyright and License

Copyright (C) 2015 by <cygx@cpan.org>

Distributed under the [Boost Software License, Version 1.0][LICENSE]


[SOURCE]:       https://github.com/cygx/p6-image-png-inflated
[ISSUES]:       https://github.com/cygx/p6-image-png-inflated/issues
[LICENSE]:      http://www.boost.org/LICENSE_1_0.txt
