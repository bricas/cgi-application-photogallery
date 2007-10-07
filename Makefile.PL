use inc::Module::Install 0.67;

if( -e 'MANIFEST.SKIP' ) {
    system( 'pod2text lib/CGI/Application/PhotoGallery.pm > README' );
}

name 'CGI-Application-PhotoGallery';
all_from 'lib/CGI/Application/PhotoGallery.pm';

requires 'File::Basename';
requires 'CGI::Application'
requires 'Cache::FileCache';
requires 'MIME::Types';
requires 'File::Find::Rule';
requires 'File::ShareDir';

test_requires 'Test::More';

feature 'GD Support',
    -default => 1,
    'GD';

feature 'Image::Magick Support',
    -default => 1,
    'Image::Magick';

auto_install;
install_share;
WriteAll;