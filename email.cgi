#!/usr/bin/perl

use CGI;

my $sendmail = "/usr/sbin/sendmail";

# A text file containing a list of valid email recipients and the web pages to 
# which the user should be redirected after email is sent to each, on 
# alternating lines.  This allows one copy of the script to serve multiple 
# purposes without the risk that the script will be abused to send spam.
# YOU MUST CREATE SUCH A TEXT FILE AND CHANGE THE NEXT LINE TO ITS
# LOCATION ON THE SERVER.

my $emailConfPath = "email.conf";

# Parse any submitted form fields and return an object we can use
# to retrieve them
my $query = new CGI;

my $name = &clean($query->param('name'));
my $email = &clean($query->param('email'));
#my $recipient = &clean($query->param('recipient'));
my $content = &clean($query->param('content'));
#my $subject = &clean($query->param('subject'));

my $subject = "User feedback from UCLA phonetics archive site";
my $recipient = "gfroerer";
$recipient = $recipient."@ucla.edu";

if (!open(IN, "$emailConfPath")) {
	&error("Configuration Error",
		"The file $emailConfPath does not exist or cannot be " .
		"opened. Please read the documentation before installing " .
		"email.cgi.");
}

my $returnpage;

my $ok = 0;
while (1) {
	my $recipientc = <IN>;
	$recipientc =~ s/\s+$//;
	if ($recipientc eq "") {
		last;
	}
	my $returnpagec = <IN>;
	$returnpagec =~ s/\s+$//;
	if ($returnpagec eq "") {
		last;
	}
	if ($recipientc eq $recipient) {
		$ok = 1;
		$returnpage = $returnpagec;
		last;
	}
}
close(IN);
if (!$ok) {
	&error("Email Rejected",
		"The requested destination address is not one of " .
		"the permitted email recipients. Please read the " .
		"documentation before installing email.cgi.");
}

# Open a pipe to the sendmail program
open(OUT, "|$sendmail -t");
# Use the highly convenient <<EOM notation to include the message
# in this script more or less as it will actually appear
print OUT <<EOM
To: $recipient
Subject: $subject
Reply-To: $email
Supposedly-From: $name
[This message was sent through a www-email gateway.]

$content
EOM
;
close(OUT);
# Now redirect to the appropriate "landing" page for this recipient.
print $query->redirect($returnpage);

exit 0;

sub clean
{
	# Clean up any leading and trailing whitespace
	# using regular expressions.
	my $s = shift @_;
	$s =~ s/^\s+//;
	$s =~ s/\s+$//;
	return $s;
}

sub error
{
	# Output a valid HTML page as an error message
	my($title, $content) = @_;
	print $query->header;
	print <<EOM
<html>
<head>
<title>$title</title>
</head>
<body>
<h1 align="center">$title</h1>
<p>
$content
</p>
EOM
;
	exit 0;
}

