#!/usr/bin/perl -w

# "features": [
#    {
#    	"type": "Feature",
#    	"properties": {
#		"popupContent": "500 Club"
#    	},
#	"geometry": {
#		"type": "Point",
#		"coordinates": [-122.423736, 37.763168]
#	}
#    },

while (<>) {

	my @fields = split /\t/;
	my $long = $fields[4];
	my $lat = $fields[5];
	my $location = $fields[2];
	my $hood = $fields[1];

#	print "lat is $lat, long is $long\n";

	if ($lat =~ /\d+/ && $long =~ /\d+/) {
#		print "lat is a number\n";
		print "\t{\n";
		print "\t\"type\": \"Feature\",\n";
		print "\t\t\"properties\": {\n";
		print "\t\t\t\"popupContent\": \"$location ($hood)\"\n";
		print "\t\t},\n";
		print "\t\t\"geometry\": {\n";
		print "\t\t\t\"type\": \"Point\",\n";
		print "\t\t\t\"coordinates\": [$lat, $long]\n";
		print "\t\t}\n";
		print "\t},\n";
	}
}
