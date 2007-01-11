# SmoothWall CGIs
#
# This code is distributed under the terms of the GPL
#
# (c) The SmoothWall Team

%basetr = (

# common

'user defined' => 'User Defined',
'invalid input' => 'Invalid input',
'save' => 'Save', # button
'refresh' => 'Refresh', # button
'restore' => 'Restore', # button
'error messages' => 'Error messages:',
'back' => 'BACK',
'help' => 'Help',
'primary dns' => 'Primary DNS:',
'secondary dns' => 'Secondary DNS:',
'invalid primary dns' => 'Invalid primary DNS.',
'invalid secondary dns' => 'Invalid secondary DNS.',
'dhcp server' => 'DHCP server',
'username' => 'Username:',
'password' => 'Password:',
'enabled' => 'Enabled:',
'this field may be blank' => 'This field may be blank.',
'these fields may be blank' => 'These fields may be blank.',
'smoothd failure' => 'Unable to run command.',
'log ascending' => 'ascending',
'log descending' => 'descending',

# header.pl
'sshome' => 'home',
'ssinterfaces' => 'interfaces',
'ssstatus' => 'status',
'ssadvstatus' => 'advanced',
'sstraffic graphs' => 'traffic graphs',
'sstraffic graph' => 'traffic monitor',
'ssbandwidth bars' => 'bandwidth bars',
'sssquid graphs' => 'squid graphs',
'ssppp settings' => 'ppp settings',
'ssmodem' => 'modem',
'ssusb adsl firmware upload' => 'alcatel speedtouch usb adsl firmware upload',
'ssremote access' => 'remote access',
'sspasswords' => 'passwords',
'ssweb proxy' => 'web proxy',
'ssim proxy' => 'im proxy',
'ssdhcp' => 'dhcp',
'ssport forwarding' => 'incoming',
'ssexternal service access' => 'external service access',
'ssdmz pinholes' => 'internal',
'ssdynamic dns' => 'dynamic dns',
'ssids' => 'intrusion detection system',
'ssim' => 'instant messages',
'sscontrol' => 'control',
'ssconnections' => 'connections',
'ssother' => 'other',
'ssfirewall' => 'firewall',
'ssshutdown' => 'shutdown',
'ssshell' => 'shell',
'ssupdates' => 'updates',
'sshelp' => 'help',
'sscredits' => 'credits',
'ssip info' => 'ip information',
'sstime' => 'time',
'ssip tools' => 'ip tools',
'ssfiltering' => 'outgoing',
'ssadvanced' => 'advanced',
'ssip block' => 'ip block',
'ssbackup' => 'backup',
'sshosts' => 'static dns',
'sspreferences' => 'preferences',
'preferences' => 'Preferences',
'user interface' => 'User interface',
'powered by' => 'powered by',
'alt home' => 'Home', # alt
'alt information' => 'Information', # alt
'alt dialup' => 'Dialup', # alt
'alt remote access' => 'Remote Access', # alt
'alt services' => 'Services', # alt
'alt ids' => 'Intrusion Detection System', # alt
'alt vpn' => 'Virtual Private Networks', # alt
'alt logs' => 'Logs', #alt 
'alt shutdown' => 'Shutdown', # alt
'alt shell' => 'Shell', # alt
'alt updates' => 'Updates', # alt

# changepw.cgi
'admin user password has been changed' => 'Admin user password has been changed.',
'dial user password has been changed' => 'Dial user password has been changed.',
'password cant be blank' => 'Password can\'t be blank.',
'passwords do not match' => 'Passwords do not match.',
'change passwords' => 'Change passwords',
'administrator user password' => 'Admin user password:',
'dial user password' => 'Dial user password:',
'again' => 'Again:',
'passwords must be at least 6 characters in length' => 'Passwords must be at least 6 characters in length',
'password contains illegal characters' => 'Pasword contains illegal characters.',

# credits.cgi
'credits' => 'Credits',
'version' => 'Version: ',
'sponsors' => 'Sponsors',
'links' => 'Links',
'smoothwall homepage' => 'SmoothWall Homepage',
'translation teams' => 'Translation teams',

# dhcp.cgi
'invalid start address' => 'Invalid start address.',
'invalid end address' => 'Invalid end address.',
'cannot specify secondary dns without specifying primary' => 'Cannot specify secondary DNS without specifying primary.',
'cannot specify secondary wins without specifying primary' => 'Cannot speciify secondary WINS without specifying primary.',
'invalid default lease time' => 'Invalid default lease time.',
'invalid max lease time' => 'Invalid max lease time.',
'dhcp server enabled' => 'DHCP server enabled.  Restarting.',
'dhcp server disabled' => 'DHCP server disabled.  Stopped.',
'dhcp configuration' => 'DHCP configuration',
'start address' => 'Start address:',
'end address' => 'End address:',
'default lease time' => 'Default lease time (mins):',
'max lease time' => 'Max lease time (mins):',
'domain name suffix' => 'Domain name suffix:',
'primary wins' => 'Primary WINS:',
'secondary wins' => 'Secondary WINS:',
'invalid primary wins' => 'Invalid primary WINS.',
'invalid secondary wins' => 'Invalid secondary WINS',
'mac address not valid' => 'MAC address not valid.',
'ip address not valid' => 'IP address not valid.',
'add a new static assignment' => 'Add a new static assignment:',
'mac addressc' => 'MAC address:',
'ip addressc' => 'IP address:',
'mac address' => 'MAC address',
'ip address' => 'IP address',
'note' => 'Note:',
'there are unsaved changes' => 'There are unsaved changes in to the list of static assignments. To activate them, press the Save button.',
'current static assignments' => 'Current static assignments:',
'descriptionc' => 'Description:',
'description' => 'Description',
'please enter a description' => 'Please enter a description.',
'description contains bad characters' => 'Description contains bad characters.',
'nis server enabledc' => 'Enable NIS server:',
'network boot enabledc' => 'Enable Network Boot:',
'nis server supportc' => 'NIS Details:',
'primary nisc' => 'Primary NIS:',
'secondary nisc' => 'Secondary NIS:',
'nis_domainc' => 'NIS Domains:',
'network boot supportc' => 'Network Boot:',
'boot serverc' => 'Boot Server:',
'boot filenamec' => 'Boot File:',
'root pathc' => 'Path:',
'invalid host name' => 'Host name is invalid. <BR>Must start by a letter and use only letters, numbers, dots, "-" and "_".',
'cannot specify third dns without specifying previous' => 'Cannot specify third DNS without specifying previous servers.',
'cannot specify fourth dns without specifying previous' => 'Cannot specify fourth DNS without specifying previous servers.',
'invalid third dns' => 'Invalid third DNS.',
'invalid fourth dns' => 'Invalid fourth DNS.',
'cannot specify nis domain without specifying nis server' => 'Cannot specify NIS domain without specifying NIS server.',
'cannot specify nis server without specifying nis domain' => 'Cannot specify NIS server without specifying NIS domain.',
'cannot specify secondary nis without specifying primary' => 'Cannot specify secondary NIS without specifying primary.',
'invalid primary nis' => 'Invalid primary NIS.',
'invalid secondary nis' => 'Invalid secondary NIS.',
'end must be greater than start' => 'End address must be greater than start address.',
'static must be outside dynamic range' => 'Static assignment must be outside dynamic lease range.',
'dynamic range cannot overlap static' => 'Dynamic lease range cannot overlap static assignments.',
'already exists and has assigned ip' => 'already exists and has assigned',
'already assigned to ip' => 'already has assigned',
'ip already assigned to' => 'is already assigned to',
'ssnetstatus' => 'network status',
'network status' => 'Network status information',
'third dns' => 'Third DNS:',
'fourth dns' => 'Fourth DNS:',
'dhcp enabledc' => 'DHCP enabled:',
'network boot enabledc' => 'Network Boot enabled:',
'network boot supportc' => 'Network Boot support:',
'boot serverc' => 'Boot server:',
'boot filenamec' => 'Boot filename:',
'root pathc' => 'Root path:',
'nis server enabledc' => 'NIS server enabled:',
'nis server supportc' => 'NIS server support:',
'primary nisc' => 'Primary NIS:',
'secondary nisc' => 'Secondary NIS:',
'nis_domainc' => 'NIS domain:',
'show staticc' => 'Show static:',
'clear to hide 1' => 'This setting applies only to the ',
'clear to hide 2' => " screen.\nTick to have the assignment shown and clear to hide it.",
'have tooltip' => 'Read the tool tip',
'static enabledc' => 'Static enabled:',
'dhcpleasesc' => 'DHCP leases:',


# proxy.cgi
'web proxy configuration' => 'Web proxy configuration',
'web proxyc' => 'Web proxy:',
'cache size' => 'Cache size (MB):',
'invalid cache size' => 'Invalid cache size.',
'remote proxy' => 'Remote proxy:',
'remote proxy username' => 'Remote proxy username:',
'remote proxy password' => 'Remote proxy password:',
'invalid maximum object size' => 'Invalid maximum object size.',
'invalid minimum object size' => 'Invalid minimum object size.',
'invalid maximum outgoing size' => 'Invalid maximum outgoing size.',
'invalid maximum incoming size' => 'Invalid maximum incoming size.',
'transparent' => 'Transparent:',
'max size' => 'Max object size (KB):',
'min size' => 'Min object size (KB):',
'max outgoing size' => 'Max outgoing size (KB):',
'max incoming size' => 'Max incoming size (KB):',

# common to logs cgis
'january' => 'January',
'february' => 'February',
'march' => 'March',
'april' => 'April',
'may' => 'May',
'june' => 'June',
'july' => 'July',
'august' => 'August',
'september' => 'September',
'october' => 'October',
'november' => 'November',
'december' => 'December',
'month' => 'Month:',
'day' => 'Day:',
'update' => 'Update', # button
'export' => 'Export', # button
'older' => 'Older',
'newer' => 'Newer',
'settingsc' => 'Settings:',

# logs.cgi/firewalllog.dat
'firewall log' => 'Firewall log',
'firewall log2' => 'Firewall log:',
'date' => 'Date:',
'time' => 'Time',
'action' => 'Action',
'in' => 'In',
'out' => 'Out',
'iface' => 'Iface',
'protocol' => 'Protocol',
'source' => 'Source',
'src port' => 'Src Port',
'destination' => 'Destination',
'dst port' => 'Dst Port',
'unknown' => 'UNKNOWN',
'lookup' => 'Lookup',
'add to ip block' => 'Add to IP block list',

# logs.cgi/log.dat
'log viewer' => 'Log viewer',
'section' => 'Section:',
'kernel' => 'Kernel',
'loginlogout' => 'Login/Logout',
'update transcript' => 'Update transcript',
'log' => 'Log:',

# logs.cgi/proxylog.dat
'proxy log viewer' => 'Proxy log viewer',
'bad ignore filter' => 'Bad ignore filter:',
'caps all' => 'ALL',
'ignore filterc' => 'Ignore filter:',
'enable ignore filterc' => 'Enable ignore filter:',
'source ip' => 'Source IP',
'website' => 'Website',

# logs.cgi/ids.dat
'ids log viewer' => 'IDS log viewer',
'datec' => 'Date:',
'namec' => 'Name:',
'priorityc' => 'Priority:',
'typec' => 'Type:',
'ipinfoc' => 'IP info:',
'referencesc' => 'References:',
'none found' => 'none found',

# extensions manager

'ssextensions'  => 'Extensions',
'extensions description'  => "Extensions offer you the ability to customise and expand your SmoothWall firewall beyond it's original design.  This may mean simply adding a button, or a perhaps an entire new service.",
'refresh extensions list' => 'Check for more',
'installed extensions'    => 'Installed:',
'available extensions'    => 'Available:',

# registration information

'ssregister'    => 'register',
'reg thankyou'  => 'Thank you for registering this SmoothWall Express System.<br/>Your Registration ID is',
'reg nevermind'  => 'If at any time you would like to register your SmoothWall Express System you can do so, in the meantime we thank you for using our product and hope that you enjoy it.',
'reg title'     => 'Title:',
'reg title title' => 'Mr, Mrs, Dr, Miss, Dark Overlord etc',
'reg name'      => 'Name:',
'reg surname'   => 'Family Name:',
'reg surname title' => 'Surname or Family name:',
'reg email address' => 'Email Address:',
'reg postal address' => 'Postal Address:',
'reg country'        => 'Country:',
'reg usage'          => 'Used by:',
'reg individual'     => 'Private Individual',
'reg consultant'     => 'IT Consultant',
'reg reseller'       => 'IT Reseller',
'reg company'        => 'Company',
'reg non-profit'     => 'Non-Profit Organisation',
'reg other'          => 'Other',
'reg size'           => 'Size of Network:',
'reg single'         => 'Single Client Computer', 
'reg type'           => 'Type of Network:',
'reg domestic'       => 'Domestic / Personal use only',
'reg domesticbusiness' => 'Domestic / Business use',
'reg business'       => 'Business use only',
'reg composition'    => 'Composition of Network:',
'reg enter comments' => 'Please enter your comments here...',
'reg info'           => 'Information, News &amp; Updates',
'reg gpl optin'      => 'I would like to receive information, news and updates from the <strong>SmoothWall GPL Project</strong>.',
'reg ltd optin'      => 'I would like to receive information, news and updates from <strong>SmoothWall Ltd</strong>.',
'reg privacy'        => 'Privacy Notice<br/>The SmoothWall GPL Project values your right to privacy. All registration information submitted by this page is processed safely and stored confidentially. We do not share data with any other organisations.',
'register'       => 'Register',
'no thanks'	 => 'No Thank You',
'reg about you'  => 'About you',
'reg about network' => 'About your network',
'reg please support' => "Please support the SmoothWall GPL project by <a href='/cgi-bin/register.cgi'>registering</a> this SmoothWall Express system.",

# index.cgi
'main page' => 'Main page',
'dial' => 'Connect', # button
'hangup' => 'Disconnect', # button
'current profile' => 'Current profile:',
'connected' => 'Connected',
'dialing' => 'Dialing...',
'modem idle' => 'Modem idle',
'isdn idle' => 'ISDN idle',
'profile has errors' => 'Profile has errors',
'modem settings have errors' => 'Modem settings have errors',
'user pages' => 'User pages',
'mstatus information' => 'Status&nbsp;information',
'mnetwork traffic graphs' => 'Network&nbsp;traffic&nbsp;graphs',
'administrator pages' => 'Administrator pages',
'mppp setup' => 'PPP&nbsp;setup',
'mmodem configuration' => 'Modem&nbsp;configuration',
'mchange passwords' => 'Change&nbsp;passwords',
'mremote access' => 'Remote&nbsp;access',
'mdhcp configuration' => 'DHCP&nbsp;configuration',
'mproxy configuration' => 'Proxy&nbsp;configuration',
'mport forwarding configuration' => 'Port&nbsp;forwarding&nbsp;configuration',
'mshutdown control' => 'Shutdown&nbsp;control',
'mlog viewer' => 'Log&nbsp;viewer',
'mfirewall log viewer' => 'Firewall&nbsp;log&nbsp;viewer',
'msecure shell' => 'Secure&nbsp;shell',
'modem dod waiting' => 'Modem Dial on Demand waiting',
'isdn dod waiting' => 'ISDN Dial on Demand waiting',
'pppoe idle' => 'PPPOE idle',
'adsl idle' => 'ADSL idle',
'pppoe dod waiting' => 'PPPOE Dial on Demand waiting',
'there are updates' => 'There are updates available for your system. Please go to the "Updates" section for more information.',
'updates is old1' => 'Your update file is ',
'updates is old2' => ' old. We recommend you update it on the "Updates" page.',

# pppsetup.cgi
'profile name not given' => 'Profile name not given.',
'telephone not set' => 'Telephone not set.',
'bad characters in the telephone number field' => 'Bad characters in the telephone number field.',
'username not set' => 'Username not set.',
'spaces not allowed in the username field' => 'Spaces not allowed in the username field.',
'password not set' => 'Password not set.',
'spaces not allowed in the password field' => 'Spaces not allowed in the password field.',
'idle timeout not set' => 'Idle timeout not set.',
'only digits allowed in the idle timeout' => 'Only digits allowed in the idle timeout.',
'bad characters in script field' => 'Bad characters in script field',
'max retries not set' => 'Max retries not set.',
'only digits allowed in max retries field' => 'Only digits allowed in max retries field.',
'profile saved' => 'Profile saved: ',
'select' => 'Select', # button
'profile made current' => 'Profile made current: ',
'the selected profile is empty' => 'The selected profile is empty.',
'delete' => 'Delete', # button
'profile deleted' => 'Profile deleted: ',
'empty' => 'Empty',
'unnamed' => 'Unnamed',
'ppp setup' => 'PPP setup',
'profiles' => 'Profiles:',
'profile name' => 'Profile name:',
'telephony' => 'Telephony:',
'interface' => 'Interface:',
'modem on com1' => 'Modem on COM1',
'modem on com2' => 'Modem on COM2',
'modem on com3' => 'Modem on COM3',
'modem on com4' => 'Modem on COM4',
'isdn tty' => 'ISDN on TTY',
'isdn1' => 'Single ISDN',
'isdn2' => 'Dual ISDN',
'computer to modem rate' => 'Computer to modem rate:',
'number' => 'Number:',
'modem speaker on' => 'Modem speaker on:',
'dialing mode' => 'Dialing mode:',
'tone' => 'Tone',
'pulse' => 'Pulse',
'maximum retries' => 'Maximum retries:',
'idle timeout' => 'Idle timeout (mins; 0 to disable):',
'persistent connection' => 'Persistent connection:',
'authentication' => 'Authentication:',
'method' => 'Method:',
'pap or chap' => 'PAP or CHAP',
'standard login script' => 'Standard login script',
'demon login script' => 'Demon login script',
'other login script' => 'Other login script',
'script name' => 'Script name:',
'type' => 'Type:',
'manual' => 'Manual',
'automatic' => 'Automatic',
'dod' => 'Dial on Demand:',
'dod for dns' => 'Dial on Demand for DNS:',
'connect on smoothwall restart' => 'Connect on SmoothWall restart:',
'pppoe settings' => 'Additional PPPoE settings:',
'adsl settings' => 'Additional ADSL settings:',
'service name' => 'Service name:',
'concentrator name' => 'Concentrator name:',
'vpi number' => 'VPI Number:',
'vci number' => 'VCI Number:',
'firmwarec' => 'Firmware:',
'firmware present' => 'Present',
'firmware not present' => '<B>Not</B> present',
'upload usb adsl firmware' => 'Upload USB ADSL firmware',
'no usb adsl firmware' => 'No USB ADSL firmware. Please upload.',
'dial on demand for this interface is not supported' => 'Dial on Demand for this interface is not supported.',
'unable to alter profiles while red is active' => 'Unable to alter profiles while RED is active.',
'automatic reboot' => 'Automatic reboot if connection down for 5 minutes:',

# remote.cgi
'ssh is enabled' => 'SSH is enabled.  Restarting.',
'ssh is disabled' => 'SSH is disabled.  Stopping.',
'remote access' => 'Remote access',
'remote access2' => 'Remote access:',
'secure admin' => 'Allow admin access only from valid referral URLs:',
'secure admin long' => 'In order to be certain that the request for an admin function is from the SmoothWall server and not some third party web page, a referral check is done. Enabling this feature means it is only possible to administer the SmoothWall if the URL you visit contains either the local GREEN IP, the local hostname, or the RED IP address. It will not be possible to administer the SmoothWall if you connect via a DNS or Dynamic DNS name.',

# shutdown.cgi
'shutting down smoothwall' => 'Shutting down SmoothWall',
'shutdown control' => 'Shutdown control',
'shutdown' => 'Shutdown', # button
'shutdown2' => 'Shutdown:',
'shutting down' => 'Shutting down',
'smoothwall is shutting down' => 'SmoothWall is shutting down.',
'rebooting smoothwall' => 'Rebooting SmoothWall',
'reboot' => 'Reboot', # button
'rebooting' => 'Rebooting',
'smoothwall is rebooting' => 'SmoothWall is rebooting.',

# preferences
'ui menus' => 'Drop Down Menus:',

# status.cgi
'web server' => 'Web server',
'cron server' => 'CRON server',
'dns proxy server' => 'DNS proxy server',
'logging server' => 'Logging server',
'kernel logging server' => 'Kernel logging server',
'secure shell server' => 'Secure shell server',
'vpn' => 'VPN',
'web proxy' => 'Web proxy',
'intrusion detection system' => 'Intrusion Detection System',
'network time server' => 'Network time server',
'im proxy' => 'IM proxy server',
'status information' => 'Status information',
'advanced status information' => 'Advanced status information',
'services' => 'Services:',
'core services' => 'Core Services:',
'memory' => 'Memory:',
'uptime and users' => 'Uptime and users:',
'interfaces' => 'Interfaces:',
'routing' => 'Routing:',
'disk usage' => 'Disk usage:',
'inode usage' => 'Inode usage:',
'loaded modules' => 'Loaded modules:',
'kernel version' => 'Kernel version:',
'stopped' => 'STOPPED',
'running' => 'RUNNING',
'swapped' => 'SWAPPED',

# portfw.cgi and dmzhole.cgi and xtaccess.cgi
'source port numbers' => 'Source port must be a number.',
'source ip bad' => 'Not a valid IP address or a network address.',
'destination ip bad' => 'Invalid destination IP',
'destination port numbers' => 'Desintation port must be a number.',
'unable to open file' => 'Unable to open file',
'source port in use' => 'Source port in use:',
'forwarding rule added' => 'Forwarding rule added; restarting forwarder',
'forwarding rule removed' => 'Forwarding rule removed; restarting forwarder',
'external access rule added' => 'External access rule added; restarting access controller',
'external access rule removed' =>' External access rule removed; restarting access controller',
'dmz pinhole rule added' => 'DMZ pinhole rule added; restarting DMZ pinhole',
'dmz pinhole rule removed' => 'DMZ pinhole rule removed; restarting DMZ pinhole',
'port forwarding configuration' => 'Port forwarding configuration',
'dmz pinhole configuration' => 'DMZ pinhole configuration',
'external access configuration' => 'External access configuration',
'add a new rule' => 'Add a new rule:',
'add a new exception' => 'Add a new exception:',
'sourcec' => 'External source IP (or network):',
'sourcec hint' => 'enter an IP or network address, or leave blank for "ALL"',
'source ipc' => 'Source IP:',
'source port or rangec' => 'Source port or range:',
'destination ipc' => 'Destination IP:',
'destination portc' => 'Destination port:',
'current rules' => 'Current rules:',
'source ip' => 'Source IP',
'source ip or networkc' => 'Source IP or network:',
'source port' => 'Source port',
'destination ip' => 'Destination IP',
'destination port' => 'Destination port',
'add' => 'Add', # button
'remove' => 'Remove', # button
'edit' => 'Edit', # button
'enabledtitle' => 'Enabled',
'nothing selected' => 'Nothing selected',
'you can only select one item to edit' => 'You can only select one item to edit',
'mark' => 'Mark',
'all' => 'ALL',
'portfw destination port' => 'If blank, then the source port will be used as the destination port.',
'ip block rule added' => 'IP block rule added.',
'ip block rule removed' => 'IP block rule removed.',
'ip block configuration' => 'IP block configuration.',
'log' => 'Log',
'logc' => 'Log:',
'action' => 'Action',
'drop packet' => 'Drop packet',
'reject packet' => 'Reject packet',
'external ip long' => 'External IP or network (blank for "ALL"):',
'external ip' => 'External IP',

# outbound.cgi
'application servicec' => 'Application / Service(s):',
'application service'  => 'Application / Service(s)',
'outbound filtering configuration' => 'Outbound filtering configuration',
'Outbound filtering' => 'Outbound filtering',
'filtering' => 'Filtering',
'filtered interfaces' => 'Interface defaults' ,
'outbound port opened' => 'Outbound Port Opened',
'outbound port closed' => 'Outbound Port Closed',
'invalid port or range' => 'Invalid port or range',
'outbound rule added to ' => 'Outbound rule added to ',
'outbound rule removed from ' => 'Outbound rule removed from ',
'portc' => 'Port:',
'unfiltered' => 'Unfiltered',
'allowed' => 'Allowed',
'blocked' => 'Blocked',
'traffic is 1' => 'Traffic originating on ',
'traffic is 2' => ' is:',
'current exceptions' => 'Current exceptions:',
'allowed machines' => 'Always allowed:',
'always allow'  => 'Always allow:',

# ddns.cgi
'dynamic dns' => 'Dynamic DNS',
'add a host' => 'Add a host:',
'servicec' => 'Service:',
'behind a proxy' => 'Behind a proxy:',
'enable wildcards' => 'Enable wildcards:',
'hostnamec' => 'Hostname:',
'domainc' => 'Domain:',
'current hosts' => 'Current hosts:',
'service' => 'Service',
'hostname' => 'Hostname',
'domain' => 'Domain',
'proxy' => 'Proxy',
'wildcards' => 'Wildcards',
'hostname not set' => 'Hostname not set.',
'domain not set' => 'Domain not set.',
'invalid hostname' => 'Invalid hostname.',
'invalid domain name' => 'Invalid domain name.',
'hostname and domain already in use' => 'Hostname and domain already in use.',
'ddns hostname added' => 'Dynamic DNS hostname added',
'ddns hostname removed' => 'Dynamic DNS hostname removed',
'force update' => 'Force update',

# iptools.cgi and whois.cgi
'ip info' => 'IP Information',
'lookup failed' => 'Reverse lookup failed',
'network utilities' => 'Network utilities',
'select tool' => 'Select tool:',
'toolc' => 'Tool:',
'ip addresses or hostnames' => 'IP addresses or hostnames:',
'run' => 'Run', # button
'could not resolve' => 'Could not resolve ',
'whois lookup' => 'Whois lookup',
'whois lookupc' => 'Whois lookup:',
'ip addresses or domain names' => 'IP addresses or domain names:',

# shell.cgi
'secure shellc' => 'Secure shell:',

# modem.cgi
'restore defaults' => 'Restore defaults', # button
'timeout must be a number' => 'Timeout must be a number.',
'modem configuration' => 'Modem configuration',
'modem configurationc' => 'Modem configuration:',
'init string' => 'Init:',
'hangup string' => 'Hangup:',
'speaker on' => 'Speaker on:',
'speaker off' => 'Speaker off:',
'tone dial' => 'Tone dial:',
'pulse dial' => 'Pulse dial:',
'connect timeout' => 'Connect timeout:',
'send cr' => 'ISP requires Carriage Return:',

# vpnmain.cgi
'restart' => 'Restart',
'stop' => 'Stop',
'vpn configuration main' => 'VPN configuration - Main',
'main' => 'Main',
'connections' => 'Connections',
'global settingsc' => 'Global settings:',
'local vpn ip' => 'Local VPN IP:',
'if blank the currently configured ethernet red address will be used' => 'If blank, the currently configured ethernet RED address will be used.',
'manual control and status' => 'Manual control and status:',
'connection name' => 'Name',
'connection status' => 'Status',
'capsclosed' => 'CLOSED',
'capsdisabled' => 'DISABLED',
'capsopen' => 'OPEN',

# vpn.cgi/vpnconfig.dat
'name must only contain characters' => 'Name must only contain characters.',
'left ip is invalid' => 'Left IP is invalid.',
'left next hop ip is invalid' => 'Left next hop is IP invalid.',
'left subnet is invalid' => 'Left subnet is invalid.',
'right ip is invalid' => 'Right IP is invalid.',
'right next hop ip is invalid' => 'Right next hop is IP invalid.',
'right subnet is invalid' => 'Right subnet is invalid.',
'vpn configuration connections' => 'VPN configuration - Connections',
'add a new connection' => 'Add a new connection:',
'namec' => 'Name:',
'leftc' => 'Left:',
'left next hopc' => 'Left next hop:',
'left subnetc' => 'Left subnet:',
'rightc' => 'Right:',
'right next hopc' => 'Right next hop:',
'right subnetc' => 'Right subnet:',
'secretc' => 'Secret:',
'current connections' => 'Current connections:',
'markc' => 'Mark:',
'import and export' => 'Import and Export:',
'import' => 'Import', # button

# graphs.cgi
'network traffic graphs' => 'Network traffic graphs',
'network traffic graphsc' => 'Network traffic graphs:',
'no graphs available' => 'No graphs available.',
'no information available' => 'No information available.',
'traffic stats interface' => 'Interface',
'traffic stats current rate' => 'Current rate',
'traffic stats direction' => 'Direction',
'traffic stats hour' => 'Hour',
'traffic stats day' => 'Day',
'traffic stats week' => 'Week',
'traffic stats month' => 'Month',
'traffic stats previous' => 'Previous',
'traffic stats current' => 'Current',
'traffic stats period' => 'Period',
'traffic stats in' => 'In',
'traffic stats out' => 'Out',

# usbadsl.cgi
'usb adsl setup' => 'Alcatel SpeedTouch USB ADSL setup',
'usb adsl help' => 'To utilise the Alcatel SpeedTouch USB modem you must upload the firmware to your SmoothWall box. Please download the tarball from Alcatel and then upload the file <B>mgmt.o</B> using the form below.',
'upload' => 'Upload', # button
'upload successful' => 'Upload successful.',
'could not create file' => 'Could not create file.',
'mgmt upload' => 'Alcatel SpeedTouch USB ADSL driver upload:',
'upload filec' => 'Upload file:',

# updates.cgi
'updates' => 'Updates',
'could not open available updates file' => 'Could not open available updates file.',
'could not download the available updates list' => 'Could not download the available updates list.',
'could not create directory' => 'Could not create directory.',
'could not open updatefile for writing' => 'Could not open update file for writing.',
'this is not an authorised update' => 'This is not an authorised update, or your patchlist is out of date.',
'this is not a valid archive' => 'This is not a valid archive.',
'could not open update information file' => 'Could not open update information file.  The update file is corrupt.',
'this update is already installed' => 'This update is already installed.',
'package failed to install' => 'Package failed to install.',
'update installed but' => 'update installed but the installed package database could not be updated',
'refresh update list' => 'Check for Updates', # button
'update'	    => 'Update',
'installed updates' => 'Installed updates:',
'id' => 'ID',
'title' => 'Title',
'description' => 'Description',
'released' => 'Released',
'installed' => 'Installed',
'could not open installed updates file' => 'Could not open installed updates file',
'available updates' => 'Available updates:',
'there are updates available' => 'There are updates available for your system. It is strongly urged that you install them as soon as possible.',
'info' => 'Info',
'all updates installed' => 'All updates installed',
'install new update' => 'Install new update:',
'to install an update' => 'To install an update please upload the .tar.gz file below:',
'upload update file' => 'Upload update file:',
'could not download latest patch list' => 'Could not download latest patch list (not connected).',
'could not connect to smoothwall org' => 'Could not connect to smoothwall.org',
'successfully refreshed updates list' => 'Successfully refreshed updates list.',
'the following update was successfully installedc' => 'The following update was successfully installed:',

# ids.cgi
'snort is enabled' => 'Snort is enabled',
'snort is disabled' => 'Snort is disabled',
'intrusion detection system2' => 'Intrusion Detection System:',


# time.cgi
'time settings' => 'Time settings',              
'timezonec' => 'Timezone:',                      
'time and datec' => 'Time and date:',
'timec' => 'Time:',  
'datec' => 'Date:',   
'setc' => 'Set:',
'bad ntp host' => 'Userdefined server name or IP address not set.',
'setting time' => 'Setting time.',
'network time retrieval' => 'Network time retrieval:',
'interval' => 'Interval:',
'one hour' => '1 hour',
'two hours' => '2 hours',
'three hours' => '3 hours',
'six hours' => '6 hours',
'twelve hours' => '12 hours',
'one day' => '1 day',
'two days' => '2 days',
'three days' => '3 days',
'save time to rtc' => 'Save time to RTC:',
'network time servers' => 'Network time servers:',
'multiple random public servers' => 'Multiple random public servers',
'selected single public server' => 'Selected single public server:',
'user defined single public or local server' => 'User defined single public or local server:',
'next update in' => 'Next update in:',
'hours' => ' hours',
'less than one hour' => 'Less than one hour',

# advnet.cgi
'restarting advanced networking features' => 'Restarting advanced networking features.',
'advanced networking features' => 'Advanced networking features',
'advanced networking featuresc' => 'Advanced networking features:',
'block icmp ping' => 'Block ICMP ping:',
'enable syn cookies' => 'Enable SYN cookies:',
'block and ignore igmp packets' => 'Block and ignore IGMP packets:',
'block and ignore multicast traffic' => 'Block and ignore multicast traffic:',
'upnp support' => 'Enable UPnP (Universal Plug and Play) support:',

# backup.cgi
'create backup floppy disk' => 'Create backup floppy disk', # button
'unable to create backup floppy' => 'Unable to create backup floppy. Verify there is a write-enabled floppy disk in the drive.',
'backup configuration' => 'Backup configuration',
'backup floppy instructions' => 'Instructions on creating a backup disk or disk image:',
'backup floppy instructions long' => 'Please insert a blank, formatted floppy disk in the SmoothWall computer\'s floppy disk drive before pressing the button to create the backup disk.  This disk should  be available when reinstalling or upgrading, in order for the saved configuration to be restored.  It may take up to a minute to write the information to the floppy disk. Alternatively, you may create a floppy disk image file, which you can later write to a floppy disk.',
'backup disk created successfully' => 'Backup disk created successfully.',
'create backup floppy image file' => 'Create backup floppy image file',
'unable to create backup floppy image file' => 
'Unable to create backup floppy image file',
'save and restart with cleared cache' => "Save and clear cache",
'RRDTool graphs' => 'RRD Tool Graphs',


# Advanced Status Page

'adv total'   => 'Total',
'adv used'    => 'Used',
'adv free'    => 'Free',
'adv used%'   => 'Used %',
'adv shared'  => 'Shared',
'adv buffers' => 'Buffers',
'adv cached'  => 'Cached',
'adv filesystem'  => 'Filesystem',
'adv mount point' => 'Mount point',
'adv size'        => 'Size',
'adv available'  => 'Available',
'adv inodes'     => 'INodes',

);

