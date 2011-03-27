#!/usr/bin/perl
#
# Helper program to get DNS info from dhcpc .info file.
#
# (c) Lawrence Manning, 2001

use lib "/usr/lib/smoothwall";
use header qw( :standard );

my $count = $ARGV[0];
my (%settings, $dhcp, $dns, @alldns, %dhcp);

if ($count eq "" || $count < 1)
{
  die "Bad DNS number given";
}

readhash("${swroot}/ethernet/settings", \%settings);

if (!($settings{'CONFIG_TYPE'} == 2 || $settings{'CONFIG_TYPE'} == 3 ||
	$settings{'CONFIG_TYPE'} == 6 || $settings{'CONFIG_TYPE'} == 7))
{
  die "RED is not a nic";
}

if ($settings{'RED_DHCP'} != 'on')
{
  die "RED is not on DHCP";
}

if (-e "/var/smoothwall/dhcp/dnsoverride")
{
  $dns_file = "/var/smoothwall/dhcp/dnsoverride";
}
else
{
  $dns_file = "/var/lib/dhcpcd/dhcpcd-$settings{'RED_DEV'}.info";
}

if (!&readhash($dns_file, \%dhcpc)) {
  die "Could not open dhcpc info file"; }

$dns = $dhcpc{'DNS'};
if ($dns ne "")
{
  @alldns = split(',', $dns);
}
else
{
  $dns = $dhcpc{'DNSSERVERS'};
  if ($dns ne "")
  {
    @alldns = split(' ', $dns);
  }
  else
  {
    %alldns = ();
  }
}

print "$alldns[$count - 1]\n";
