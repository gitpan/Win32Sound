#######################################################################
#
# Win32::Sound - Perl Module to play .WAV files and/or system sounds
# ^^^^^^^^^^^^
#
# Version: 0.03 (08 Mar 1997)
# by Aldo Calpini <dada@divinf.it>
#
#######################################################################


Manifest
^^^^^^^^
The file Win32Sound-0.03.zip contains:

    README
    README.TXT
    TEST.PL
    INSTALL.BAT
    SOUND.PM
    SOUND.PLL.110
    SOUND.PLL.30X
    SOURCE/README.TXT
    SOURCE/SOUND.CPP
    SOURCE/SOUND.DEF
    SOURCE/SOUND.MAK
    SOURCE/SOUND300.MAK

(be sure to have unzipped it with LONG FILE NAMES and PATHS)


Installation Instructions
^^^^^^^^^^^^^^^^^^^^^^^^^
    1. Run the INSTALL.BAT program.
    3. Run the TEST.PL script to see if everything works.
    4. Have fun.


Documentation
^^^^^^^^^^^^^

This module works with:
    Perl for Win32 version 5.001m (build 110)
    Perl for Win32 version 5.003  (build 300 and higher, EXCEPT 304)

That said, just place this line in your script:

    use Win32::Sound;

You have now 2 functions available:

1)  Win32::Sound::Play ( [$sound, $flag] );
    ---------------------------------------
        Plays the specified sound: $sound can be name of a .WAV file
        or one of the following predefined sound names:
            SystemDefault
            SystemAsterisk
            SystemExclamation
            SystemExit
            SystemHand
            SystemQuestion
            SystemStart
            
        Additionally, if the name is not found, the functions plays
        the system default sound (unless you specify the SND_NODEFAULT
        flag). If no parameters are given, this function stops the
        sound actually playing (see also: Win32::Sound::Stop).

        $flag can be a combination of the following constants:
            SND_ASYNC
                The sound is played asynchronously and the function 
                returns immediately after beginning the sound
                (if this flag is not specified, the sound is
                played synchronously and the function returns
                when the sound ends).
            SND_LOOP
                The sound plays repeatedly until it is stopped.
                You must also specify SND_ASYNC flag.
            SND_NODEFAULT
                No default sound is used. If the specified $sound
                cannot be found, the function returns without
                playing anything.
            SND_NOSTOP
                If a sound is already playing, the function fails.
                By default, any new call to the function will stop
                previously playing sounds.

        Examples:
            Win32::Sound::Play("SystemDefault");
            Win32::Sound::Play("myfile.wav", SND_ASYNC | SND_LOOP);

            # this is the same as Stop()...
            Win32::Sound::Play();

            # this will play SystemDefault (xxx doesn't exist)
            Win32::Sound::Play("xxx");

            # this will play nothing (imagine why?)
            Win32::Sound::Play("xxx", SND_NODEFAULT);

2)  Win32::Sound::Stop ()
    ---------------------
        Stops the sound currently playing.

        Examples:
            Win32::Sound::Stop();


On-line
^^^^^^^
You can always find the latest version of this package online at:

    http://www.divinf.it/dada/perl/sound

Send any comment to:

    Aldo Calpini  <dada@divinf.it>
