use Image::PNG::Inflated;
use Image::RGBA::Sugar;

# grayscale gradient
my $grad = blob8.new(map { |($_, $_, $_, 255) }, ^256);
my $blob = [~] $grad xx 64;             # ^--- a opaque pixel

spurt 'grayscale.png', to-png($blob, 256, 64);
                            # width --^    ^-- height

# our most beloved butterfly
my $img = rgba::text.read('camelia.txt'.IO);
spurt 'camelia.png', to-png($img);
