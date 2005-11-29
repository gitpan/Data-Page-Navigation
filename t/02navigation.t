use Test::More tests => 8;
use Data::Page::Navigation;

#first
{
	my $total_entries=30;
	my $entries_per_page = 5;
	my $pages_per_navigation = 5;

	my $pager = Data::Page->new(
		$total_entries,
		$entries_per_page,
		2
	);
	
	#pages_per_navigation
	$pager->pages_per_navigation($pages_per_navigation);
	is($pager->pages_per_navigation,$pages_per_navigation,"first: class method: pages_per_navigation");
	
	is($pager->pages_per_navigation,$pages_per_navigation,"first: object method: pages_per_navigation");
	is_deeply([$pager->pages_in_navigation],[qw/1 2 3 4 5/],"first: pages_in_navigation p2");
	
	#page change
	$pager->current_page(6);
	is_deeply([$pager->pages_in_navigation],[qw/2 3 4 5 6/],"first: pages_in_navigation p6");
}

#second
{
	my $total_entries=180;
	my $entries_per_page = 10;
	my $pages_per_navigation = 10;

	my $pager = Data::Page->new(
		$total_entries,
		$entries_per_page,
		2
	);

	#pages_per_navigation
	$pager->pages_per_navigation($pages_per_navigation);
	is($pager->pages_per_navigation,$pages_per_navigation,"first: class method: pages_per_navigation");
	
	is($pager->pages_per_navigation,$pages_per_navigation,"second: object method: pages_per_navigation");
	is_deeply([$pager->pages_in_navigation],[qw/1 2 3 4 5 6 7 8 9 10/],"second: pages_in_navigation p2");
	
	#page change
	$pager->current_page(9);
	is_deeply([$pager->pages_in_navigation],[qw/5 6 7 8 9 10 11 12 13 14/],"second: pages_in_navigation p9");
}