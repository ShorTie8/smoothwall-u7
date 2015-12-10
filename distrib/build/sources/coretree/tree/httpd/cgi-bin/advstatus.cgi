#!/usr/bin/perl
#
# SmoothWall CGIs
#
# This code is distributed under the terms of the GPL
#
# (c) The SmoothWall Team

use lib "/usr/lib/smoothwall";
use header qw( :standard );

$graphcriticalcolour = "#ff0000";
$graphwarningcolour  = "#ff5d00";
$graphnominalcolour  = "#ffa200";
$graphblankcolour    = "#ffffff";

$graphalertcritical = 90;
$graphalertwarning  = 70;

&showhttpheaders();

&openpage($tr{'advanced status information'}, 1, '', 'about your smoothie');

&openbigbox('100%', 'LEFT');

&alertbox($errormessage);

&openbox($tr{'memory'});

@echo = `/usr/bin/free -ot`;
shift(@echo);

# these really should be tr strings

print qq|
<br />
<table class='list' style='width: 90%; margin: auto auto 1em auto; margin-right: auto; border-collapse: collapse; border: solid 1px #c0c0c0;'>
<tr>
	<th>&nbsp;</th>
	<th style='text-align: right; width: 6em'>$tr{ 'adv total' }</th>
	<th style='text-align: right; width: 6em'>$tr{ 'adv used' }</th>
	<th style='text-align: right; width: 6em'>$tr{ 'adv free' }</th>
	<th style='text-align: right;'>&nbsp;</th>
	<th style='text-align: center; width: 150px;'>$tr{ 'adv used%' }</th>
	<th style='text-align: right; width: 6em;' >$tr{ 'adv shared' }</th>
	<th style='text-align: right; width: 6em;' >$tr{ 'adv buffers' }</th>
	<th style='text-align: right; width: 6em;' >$tr{ 'adv cached' }</th>
</tr>
|;

foreach $mline (@echo) {
	chomp($mline);

	my ($mdev, $mtotal, $mused, $mfree, $mshared, $mbuffers, $mcached) = split(/\s+/, $mline);

	my $mperc = 0;
	if ($mtotal) {
		$mperc = int((($mused/$mtotal)*100));
	}
	if ($mperc > $graphalertcritical) {
		$graphbgcolour = $graphcriticalcolour;
	} elsif ($mperc > $graphalertwarning) {
		$graphbgcolour = $graphwarningcolour;
	} elsif ($mperc > 0) {
		$graphbgcolour = $graphnominalcolour;
	} else {
		$graphbgcolour = $graphblankcolour;
	}
	if ( $mdev eq "Total:" ) {
		print qq|<tr><td colspan="9"><hr></td></tr>|;
	}
	if ($mdev eq 'Mem:') {
		$graphbgcolour = $graphnominalcolour;
	}
	print qq|
<tr>
<td style='text-align: right;'><tt>$mdev</tt></td>
<td style='text-align: right;'><tt>${mtotal}</tt></td>
<td style='text-align: right;'><tt>${mused}K</tt></td>
<td style='text-align: right;'><tt>${mfree}K</tt></td>
<td style='text-align: right;'><tt>&nbsp;</tt></td>
<td style='text-align: right;' width='160px;' nowrap>
	<table class='list' style='width: 150px; border: 1px #505050 solid;'><tr>|;
	if ($mperc < 1) {
		print "<td style='background-color: $graphbgcolour; width: 1%; text-align: center;'><tt>$mperc%</tt></td>";}
	else {
		print "<td style='background-color: $graphbgcolour; width: $mperc%; text-align: center;'><tt>$mperc%</tt></td>";
	}
	print qq|
<td style='background-color: $graphblankcolour;'>&nbsp;</td></tr></table></td>
|;
	if ( $mshared ne "" ) {
		print qq|
<td style='text-align: right;'><tt>${mshared}K</tt></td>
<td style='text-align: right;'><tt>${mbuffers}K</tt></td>
<td style='text-align: right;'><tt>${mcached}K</tt></td>
|;
	} else {
		print qq|
<td style='text-align: right;'><tt></tt></td>
<td style='text-align: right;'><tt></tt></td>
<td style='text-align: right;'><tt></tt></td>
|;
	}
	print qq|
</tr>
|;
}

print qq|
</table>\n|;
&closebox();

&openbox($tr{'disk usage'});

@echo = `df -h`;
shift(@echo);

print qq|
<br />
<table class='list' style='width: 90%; margin: auto auto 1em auto; margin-right: auto; border-collapse: collapse; border: solid 1px #c0c0c0;'>
<tr>
<th style='width: 100px;'>$tr{ 'adv filesystem' }</th>
<th style='width: 75px;'>$tr{ 'adv mount point' }</th>
<th style='width: 40px; text-align: right;'>$tr{ 'adv size'}</th>
<th style='width: 40px; text-align: right;'>$tr{ 'adv used'}</th>
<th style='width: 65px; text-align: right;'>$tr{ 'adv available'}</th>
<th style='width: 5px;' >&nbsp;</th>
<th style='width: 150px; text-align: center;'>$tr{ 'adv used%' }</th>
</tr>
|;
foreach $mount (@echo) {
   chomp($mount);
   ($dev, $size, $size_used, $size_avail, $size_percentage, $mount_point) = split(/\s+/,$mount);
   if (int($size_percentage) > $graphalertcritical) {
      $graphbgcolour = $graphcriticalcolour;
   } elsif (int($size_percentage) > $graphalertwarning) {
      $graphbgcolour = $graphwarningcolour;
   } elsif (int($size_percentage) > 0) {
      $graphbgcolour = $graphnominalcolour;
   } else {
      $graphbgcolour = $graphblankcolour;
   }
   print qq|
<tr>
	<td><tt>$dev</tt></td>
	<td><tt>$mount_point</tt></td>
	<td style='text-align: right;'><tt>$size</tt></td>
	<td style='text-align: right;'><tt>$size_used</tt></td>
	<td style='text-align: right;'><tt>$size_avail</tt></td>
	<td><tt>&nbsp;</tt></td>
	<td><table class='list' style='width: 150px; border: 1px #505050 solid;'>
<tr>
|;
   if (int($size_percentage) < 1) {
	print "<td style='background-color: $graphbgcolour; width: 1%; text-align: center;'><tt>$size_percentage</tt></td>";}
   else {
	print "<td style='background-color: $graphbgcolour; width: $size_percentage; text-align: center;'><tt>$size_percentage</tt></td>";
   }
   print qq|
<td style='background-color: $graphblankcolour;'>&nbsp;</td></tr></table></td>
</tr>
|;
}

print qq|
</table>\n|;
&closebox();

&openbox($tr{'inode usage'});
@echo = `df -i`;
shift(@echo);
print qq|
<br />
<table class='list' style='width: 90%; margin: auto auto 1em auto; margin-right: auto; border-collapse: collapse; border: solid 1px #c0c0c0;'>
<tr>
<th style='width: 100px;'>$tr{ 'adv filesystem' }</th>
<th style='width: 75px;'>$tr{ 'adv mount point' }</th>
<th style='width: 40; text-align: right;'>$tr{ 'adv inodes' }</th>
<th style='width: 40; text-align: right;'>$tr{ 'adv used' }</th>
<th style='width: 65; text-align: right;'>$tr{ 'adv free' }</th>
<th style='width: 5px;'>&nbsp;</th>
<th style='width: 150px; text-align: center;'>$tr{ 'adv used%' }</th>
</tr>
|;
foreach $mount (@echo) {
   chomp($mount);
   ($dev, $size, $size_used, $size_avail, $size_percentage, $mount_point) = split(/\s+/,$mount);
   if (int($size_percentage) > $graphalertcritical) {
      $graphbgcolour = $graphcriticalcolour;
   } elsif (int($size_percentage) > $graphalertwarning) {
      $graphbgcolour = $graphwarningcolour;
   } elsif (int($size_percentage) > 0) {
      $graphbgcolour = $graphnominalcolour;
   } else {
      $graphbgcolour = $graphblankcolour;
   }
   print qq|
<tr>
	<td ><tt>$dev</tt></td>
	<td ><tt>$mount_point</tt></td>
	<td style='text-align: right;'><tt>$size</tt></td>
	<td style='text-align: right;'><tt>$size_used</tt></td>
	<td style='text-align: right;'><tt>$size_avail</tt></td>
	<td><tt>&nbsp;</tt></td>
	<td><table class='list' style='width: 150px; border: 1px #505050 solid;'>
<tr>
|;
   if (int($size_percentage) < 1) {
	print "<td style='background-color: $graphbgcolour; width: 1%; text-align: center;'><tt>$size_percentage</tt></td>";}
   else {
	print "<td style='background-color: $graphbgcolour; width: $size_percentage; text-align: center;'><tt>$size_percentage</tt></td>";
   }
   print qq|
<td style='background-color: $graphblankcolour;'>&nbsp;</td></tr></table></td>
</tr>
|;
}
print qq|
</table>\n|;
&closebox();

&openbox($tr{'uptime and users'});

my @who = split /\n/, &pipeopen( '/usr/bin/w' );

my ( $time, $up, $users, $load ) = ( $who[0] =~/\s+([^\s]*)\s+up\s+([^,]*),\s+([^,]*),\s+(.*)/ );

print "<div style='text-align: center;'>$time,  up $up,  $users,  $load</div>";

print qq{
	<br />
	<table class='list' style='width: 90%; margin: auto auto 1em auto; margin-right: auto; border-collapse: collapse; border: solid 1px #c0c0c0;'>
	<tr>
		<th style='padding-left: 1em; text-align:left;'>$tr{'adv user'}</th>
		<th style='text-align:left;'>$tr{'adv tty'}</th>
		<th style='text-align:left;'>$tr{'adv login'}</th>
		<th style='text-align:left;'>$tr{'adv idle'}</th>
		<th style='text-align:left;'>$tr{'adv jcpu'}</th>
		<th style='text-align:left;'>$tr{'adv pcpu'}</th>
		<th style='text-align:left;'>$tr{'adv what'}</th>
	</tr>
};

shift @who;  # remove the header information
shift @who;  # remove the header information

foreach my $whol (@who){
	my ( $user, $tty, $login, $idle, $jcpu, $pcpu, $what ) = split /\s+/, $whol;
	print qq{
		<tr>
			<td style='padding-left: 1em; text-align:left;'>$user</td>
			<td>$tty</td>
			<td>$login</td>
			<td>$idle</td>
			<td>$jcpu</td>
			<td>$pcpu</td>
			<td>$what</td>
		</tr>
	};
}
print "</table>\n";

&closebox();

my %ethersettings;
&readhash(  "/var/smoothwall/ethernet/settings", \%ethersettings );
my %devices;
$devices{$ethersettings{'GREEN_DEV'}} = $tr{'green'};
$devices{$ethersettings{'ORANGE_DEV'}} = $tr{'orange'};
$devices{$ethersettings{'RED_DEV'}} = $tr{'red'};
$devices{$ethersettings{'PURPLE_DEV'}} = $tr{'purple'};

&openbox($tr{'interfaces'});

my $doRX = 0;
my $doTX = 0;

print "<div class='list' style='margin:1.5em auto; padding:.1em 0 2em 0; width:95%; max-height:500px; overflow:auto;'>\n";

my @interfaces = split /\n\d+: /g, &pipeopen( '/usr/sbin/ip', '-s', 'link' );
my @addrs = split /\n\d+: /g, &pipeopen( '/usr/sbin/ip', 'addr' );
$interfaces[0] =~ s/^\d+:\s+//;
$addrs[0] =~ s/^\d+:\s+//;

for (my $i=0; $i<@interfaces; $i++) {
	$interfaces[$i] .= $addrs[$i];
}
foreach my $interface ( @interfaces ){
	my ( $devicename ) = ( $interface =~ /^([^:]+)/ );
        my ( $macaddress ) = ( $interface =~ /link\/[^\s]+\s+([a-fA-F\d]+:[a-fA-F\d]+:[a-fA-F\d]+:[a-fA-F\d]+:[a-fA-F\d]+:[a-fA-F\d]+)/ );
        my ( $ipaddress, $netmask  ) = ( $interface =~ /inet (\d+\.\d+\.\d+\.\d+)(\/\d+)/ );
        my ( $mtu )        = ( $interface =~ /mtu (\d+)/ );
        my ( $status     ) = ( $interface =~ /state\s+(\w+)\s+/ );
        my ( $states     ) = ( $interface =~ /<([^>]+)>/ );
	# bytes, packets, errors, dropped, overrun, multicast
        my ( $rx, $rxp, $rxe, $rxd, $rxo, $rxm ) =
		( $interface =~ /RX: bytes.*\n\s+(\d+)\s+(\d+)\s+(\d+)\s+(\d+)\s+(\d+)\s+(\d+)/ );
	$rxe = "" if ($rxe eq "0");
	$rxd = "" if ($rxd eq "0");
	$rxo = "" if ($rxo eq "0");
	$rxm = "" if ($rxm eq "0");
	# bytes, packets, errors, dropped, carrier, collisions
        my ( $tx, $txp, $txe, $txd, $txc, $txx ) =
		( $interface =~ /TX: bytes.*\n\s+(\d+)\s+(\d+)\s+(\d+)\s+(\d+)\s+(\d+)\s+(\d+)/ );
	$txe = "" if ($txe eq "0");
	$txd = "" if ($txd eq "0");
	$txc = "" if ($txc eq "0");
	$txx = "" if ($txx eq "0");

	if ( defined $devices{$devicename} ){
		$devicename = "$devicename ($devices{$devicename})";
	}

	print <<END;
		<br />
		<table class='box' style='width: 96%; margin: .05em auto; border-collapse: collapse; border: solid 1px #c0c0c0;'>
		<tr>
			<th colspan='4'>$devicename</th>
		</tr>
		<tr>
			<td class='base' style='padding:0 1em 0 0; width:21%;'>Status:</td>
			<td style='padding:0 1em 0 0; width:21%;'>$status</td>
			<td class='base' style='padding:0 1em 0 0; width:22%;'>Link States:</td>
			<td style='padding:0 1em 0 0;'>$states</td>
		</tr>
		<tr>
			<td class='base' style='padding:0 1em 0 0;'>IP Address:</td>
			<td style='padding:0 1em 0 0;'>$ipaddress</td>
			<td class='base' style='padding:0 1em 0 0;'>MAC Address:</td>
			<td style='padding:0 1em 0 0;'>$macaddress</td>
		</tr>
		<tr>
			<td class='base' style='padding:0 1em 0 0;'>Netmask:</td>
			<td style='padding:0 1em 0 0;'>$netmask</td>
			<td class='base' style='padding:0 1em 0 0;'>MTU:</td>
			<td style='padding:0 1em 0 0;'>$mtu</td>
		</tr>
		<tr>
			<td class='base' style='padding:0 1em 0 0;'>Sent packets / bytes:</td>
			<td style='padding:0 1em 0 0;'>$txp / $tx</td>
			<td class='base' style='padding:0 1em 0 0;'>Received packets / bytes:</td>
			<td style='padding:0 1em 0 0;'>$rxp / $rx</td>
		</tr>
		<tr>
			<td class='base' style='padding:0 1em 0 0;'>Errors (sent):</td>
			<td style='padding:0 1em 0 0;'>$txe</td>
			<td class='base' style='padding:0 1em 0 0;'>Errors (received):</td>
			<td style='padding:0 1em 0 0;'>$rxe</td>
		</tr>
		<tr>
			<td class='base' style='padding:0 1em 0 0;'>Dropped (sent):</td>
			<td style='padding:0 1em 0 0;'>$txd</td>
			<td class='base' style='padding:0 1em 0 0;'>Dropped (received):</td>
			<td style='padding:0 1em 0 0;'>$rxd</td>
		</tr>
		<tr>
			<td class='base' style='padding:0 1em 0 0;'>Carrier (sent):</td>
			<td style='padding:0 1em 0 0;'>$txc</td>
			<td class='base' style='padding:0 1em 0 0;'>Overruns (received):</td>
			<td style='padding:0 1em 0 0;'>$rxo</td>
		</tr>
		<tr>
			<td class='base' style='padding:0 1em 0 0;'>Collisions (sent):</td>
			<td style='padding:0 1em 0 0;'>$txx</td>
			<td class='base' style='padding:0 1em 0 0;'>Multicast (received):</td>
			<td style='padding:0 1em 0 0;'>$rxm</td>
		</tr>
		</table>
END
}
print "</div>\n";

&closebox();

&openbox($tr{'routing'});

my @routes = split /\n/, &pipeopen( '/usr/sbin/ip', 'route' );

print <<END;
	<br />
	<table class='list' style='width: 90%; margin: auto auto 1em auto; border-collapse: collapse; border: solid 1px #c0c0c0;'>
	<tr>
		<th style='width:15%; padding-left:.5em; text-align:left'>$tr{'adv destination'}</th>
		<th style='width:15%; text-align:left'>$tr{'adv gateway'}</th>
		<th style='width:10%; text-align:left'>$tr{'adv iface'}</th>
		<th style='width:15%; text-align:left'>Source</th>
		<th style='width:10%; text-align:left'>$tr{'adv metric'}</th>
		<th style='width:10%; text-align:left'>Proto</th>
		<th style='width:7%; text-align:left'>Scope</th>
	</tr>
END

foreach my $routel (@routes){
	my ($destination) = ($routel =~ /^([^\s]+)/);
	my ($gateway) = ($routel =~ /via\s+([^\s]+)/);
	my ($iface) = ($routel =~ /dev\s+([^\s]+)/);
	my ($source) = ($routel =~ /src\s+([^\s]+)/);
	my ($proto) = ($routel =~ /proto\s+([^\s]+)/);
	my ($scope) = ($routel =~ /scope\s+([^\s]+)/);
	my ($metric) = ($routel =~ /metric\s+([^\s]+)/);

	print <<END;
		<tr>
			<td style='padding-left:.5em;'>$destination</td>
			<td>$gateway</td>
			<td>$devices{$iface}</td>
			<td>$source</td>
			<td>$metric</td>
			<td>$proto</td>
			<td>$scope</td>
		</tr>
END
}
print "</table>\n";

&closebox();
&openbox("$tr{'adv hardware'} <i>(PCI)</i>");

my @lspci = split /\n/, &pipeopen( '/usr/sbin/lspci' );

print <<END;
	<br />
	<table class='list' style='width: 90%; margin: auto auto 1em auto; border-collapse: collapse; border: solid 1px #c0c0c0;'>
	<tr>
		<th style='width:15%; padding-left:.5em; text-align:left'>$tr{'adv address'}</th>
		<th style='width:25%; text-align:left'>$tr{'adv type'}</th>
		<th style='text-align:left'>$tr{'adv device'}</th>
	</tr>
END

foreach my $devl (@lspci){
	my ( $address, $type, $device ) = ( $devl =~/([^\s]*)\s+([^:]*):\s+(.*)/ );
	print <<END;
		<tr>
			<td style='padding-left:.5em;'>$address</td>
			<td>$type</td>
			<td>$device</td>
		</tr>
END
}
print "</table>\n";

&closebox();

&openbox($tr{'loaded modules'});

my @lsmod = split /\n/, &pipeopen( '/bin/lsmod' );

print "<div class='list' style='margin:1.5em auto; padding:0 0 1em 0; width:90%; max-height:400px; overflow:auto;'>\n";
print <<END;
	<br />
	<table class='box' style='width:90%; margin:1em auto; border-collapse: collapse; border: solid 1px #c0c0c0;'>
		<tr>
			<th style='width:30%; padding-left:.5em; text-align:left'>$tr{'adv module'}</th>
			<th style='width:20%; text-align:left'>$tr{'adv size'}</th>
			<th style='text-align:left'>$tr{'adv used by'}</th>
		</tr>
END

shift @lsmod;  # remove the header information

foreach my $modl (@lsmod){
	my ( $module, $size, $usedby, $modules ) = split /\s+/, $modl;
	print qq{
		<tr>
			<td style='padding-left:.5em;'>$module</td>
			<td>$size</td>
			<td>$usedby</td>
		</tr>
	};
}
print "</table>\n";
print "</div>\n";

&closebox();

&openbox($tr{'kernel version'});
print "<pre style='margin-left:1em;'>";
system ('/bin/uname', '-a');
print "</pre>\n";
&closebox();

&alertbox('add', 'add');

&closebigbox();

&closepage();

