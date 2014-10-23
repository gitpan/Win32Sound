@rem = '--*-Perl-*--';
@rem = '
@echo off
perl.exe -w install.bat %1 %2 %3 %4 %5 %6 %7 %8 %9
goto endofperl
@rem ';

require "NT.ph";

$MODULE  = "Sound";
$VERSION = "0.03";

print "\n   Win32::$MODULE version $VERSION Install Program\n".
        "   by Aldo Calpini <dada\@divinf.it>\n\n";


$PM = "$MODULE.pm";

if($] =~ /^5\.001/) {

    $KEY = "SOFTWARE\\Microsoft\\Resource Kit\\PERL5";
    $ABSRegOpenKeyEx    = \&NTRegOpenKeyEx;
    $ABSRegQueryValueEx = \&NTRegQueryValueEx;
    $ABSRegCloseKey     = \&NTRegCloseKey;
    $PLL = "$MODULE.pll.110";

} elsif($] =~ /^5\.003/) {

    $KEY = "SOFTWARE\\ActiveWare\\Perl5";
    $ABSRegOpenKeyEx    = \&Win32::RegOpenKeyEx;
    $ABSRegQueryValueEx = \&Win32::RegQueryValueEx;
    $ABSRegCloseKey     = \&Win32::RegCloseKey;
    $PLL = "$MODULE.pll.30x";

} else {

    die "ERROR: Wrong version of Perl found. \n".
        "       This program requires version 5.001m (build 110) \n".
        "       or version 5.003 (build 300 or higher).\n";

}

&$ABSRegOpenKeyEx(&HKEY_LOCAL_MACHINE, $KEY, &NULL, &KEY_ALL_ACCESS, $hkey)
  or die "ERROR: Can't open Perl registry key: $KEY\n";

&$ABSRegQueryValueEx($hkey, 'PRIVLIB', &NULL, $type, $PRIVLIB)
  or die "ERROR: Can't get PRIVLIB registry value\n";

undef $type; # [dada] just to avoid the warning...

&$ABSRegCloseKey($hkey);

print "Copying $PM to $PRIVLIB\\Win32...\n";
# print "copy $PM $PRIVLIB\\Win32\n";
`copy $PM $PRIVLIB\\Win32`;

if(! -d $PRIVLIB."\\auto\\Win32\\$MODULE") {
    print "Creating directory $PRIVLIB\\auto\\Win32\\$MODULE...\n";
    mkdir($PRIVLIB."\\auto\\Win32\\$MODULE", 0)
      or die "ERROR: ($!)\n";
}

print "Copying $PLL to $PRIVLIB\\auto\\Win32\\$MODULE...\n";
# print "copy $PLL $PRIVLIB\\auto\\Win32\\$MODULE\\$MODULE.pll\n";
`copy $PLL $PRIVLIB\\auto\\Win32\\$MODULE\\$MODULE.pll`;

print "Installation complete.\n";

__END__
:endofperl
