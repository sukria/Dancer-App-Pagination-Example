package PaginationTest;
use Dancer ':syntax';
our $VERSION = '0.1';

get '/' => sub {
    my $data = [ 'a' .. 'z'];
    template 'index', { 
        current_page => params->{'page'},
        entries_per_page => 5,
        letters => $data 
    };
};

true;
