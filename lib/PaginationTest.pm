package PaginationTest;
use Dancer ':syntax';
our $VERSION = '0.1';

get '/' => sub {
    my $data = [ 'a' .. 'z'];

    if ( params->{page} ) {
        return halt('Attribut page must be an integer')
            if params->{page} !~ /^\d+$/;
    }

    template 'index', { 
        current_page => params->{'page'},
        entries_per_page => 5,
        letters => $data 
    };
};

true;
