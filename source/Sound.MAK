# Microsoft Developer Studio Generated NMAKE File, Format Version 4.10
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Dynamic-Link Library" 0x0102

!IF "$(CFG)" == ""
CFG=Sound - Win32 Debug
!MESSAGE No configuration specified.  Defaulting to Sound - Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "Sound - Win32 Release" && "$(CFG)" != "Sound - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE on this makefile
!MESSAGE by defining the macro CFG on the command line.  For example:
!MESSAGE 
!MESSAGE NMAKE /f "Sound.MAK" CFG="Sound - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "Sound - Win32 Release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "Sound - Win32 Debug" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 
################################################################################
# Begin Project
# PROP Target_Last_Scanned "Sound - Win32 Debug"
CPP=cl.exe
RSC=rc.exe
MTL=mktyplib.exe

!IF  "$(CFG)" == "Sound - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "WinRel"
# PROP BASE Intermediate_Dir "WinRel"
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "WinRel"
# PROP Intermediate_Dir "WinRel"
OUTDIR=.\WinRel
INTDIR=.\WinRel

ALL : "$(OUTDIR)\Sound.pll"

CLEAN : 
	-@erase "$(INTDIR)\Sound.obj"
	-@erase "$(OUTDIR)\Sound.exp"
	-@erase "$(OUTDIR)\Sound.lib"
	-@erase "$(OUTDIR)\Sound.pll"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

# ADD BASE CPP /nologo /MT /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /FR /YX /c
# ADD CPP /nologo /MT /W3 /GX /O2 /I "../../../" /I "../../../inc" /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /YX /c
# SUBTRACT CPP /Fr
CPP_PROJ=/nologo /MT /W3 /GX /O2 /I "../../../" /I "../../../inc" /D "WIN32" /D\
 "NDEBUG" /D "_WINDOWS" /Fp"$(INTDIR)/Sound.pch" /YX /Fo"$(INTDIR)/" /c 
CPP_OBJS=.\WinRel/
CPP_SBRS=.\.
# ADD BASE MTL /nologo /D "NDEBUG" /win32
# ADD MTL /nologo /D "NDEBUG" /win32
MTL_PROJ=/nologo /D "NDEBUG" /win32 
# ADD BASE RSC /l 0x409 /d "NDEBUG"
# ADD RSC /l 0x409 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/Sound.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib /nologo /subsystem:windows /dll /machine:I386
# ADD LINK32 ..\..\..\LibRel\perl100.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib winmm.lib /nologo /base:0x10120000 /subsystem:windows /dll /machine:I386 /out:"WinRel\Sound.pll"
LINK32_FLAGS=..\..\..\LibRel\perl100.lib kernel32.lib user32.lib gdi32.lib\
 winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib\
 uuid.lib odbc32.lib odbccp32.lib winmm.lib /nologo /base:0x10120000\
 /subsystem:windows /dll /incremental:no /pdb:"$(OUTDIR)/Sound.pdb"\
 /machine:I386 /def:".\Sound.DEF" /out:"$(OUTDIR)/Sound.pll"\
 /implib:"$(OUTDIR)/Sound.lib" 
DEF_FILE= \
	".\Sound.DEF"
LINK32_OBJS= \
	"$(INTDIR)\Sound.obj"

"$(OUTDIR)\Sound.pll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "Sound - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "WinDebug"
# PROP BASE Intermediate_Dir "WinDebug"
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "WinDebug"
# PROP Intermediate_Dir "WinDebug"
OUTDIR=.\WinDebug
INTDIR=.\WinDebug

ALL : "WinDebug\Sound.pll"

CLEAN : 
	-@erase "$(INTDIR)\Sound.obj"
	-@erase "$(INTDIR)\vc40.idb"
	-@erase "$(INTDIR)\vc40.pdb"
	-@erase "$(OUTDIR)\Sound.exp"
	-@erase "$(OUTDIR)\Sound.lib"
	-@erase "$(OUTDIR)\Sound.pdb"
	-@erase "WinDebug\Sound.ilk"
	-@erase "WinDebug\Sound.pll"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

# ADD BASE CPP /nologo /MT /W3 /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /FR /YX /c
# ADD CPP /nologo /MTd /w /W0 /Gm /GX /Zi /Od /I "../../../" /I "../../../inc" /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /YX /c
# SUBTRACT CPP /Fr
CPP_PROJ=/nologo /MTd /w /W0 /Gm /GX /Zi /Od /I "../../../" /I "../../../inc"\
 /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /Fp"$(INTDIR)/Sound.pch" /YX\
 /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /c 
CPP_OBJS=.\WinDebug/
CPP_SBRS=.\.
# ADD BASE MTL /nologo /D "_DEBUG" /win32
# ADD MTL /nologo /D "_DEBUG" /win32
MTL_PROJ=/nologo /D "_DEBUG" /win32 
# ADD BASE RSC /l 0x409 /d "_DEBUG"
# ADD RSC /l 0x409 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/Sound.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib /nologo /subsystem:windows /dll /debug /machine:I386
# ADD LINK32 ..\..\..\libdebug\perl100.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib winmm.lib /nologo /base:0x10120000 /subsystem:windows /dll /debug /machine:I386 /out:"WinDebug\Sound.pll"
LINK32_FLAGS=..\..\..\libdebug\perl100.lib kernel32.lib user32.lib gdi32.lib\
 winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib\
 uuid.lib odbc32.lib odbccp32.lib winmm.lib /nologo /base:0x10120000\
 /subsystem:windows /dll /incremental:yes /pdb:"$(OUTDIR)/Sound.pdb" /debug\
 /machine:I386 /def:".\Sound.DEF"\
 /out:"WinDebug\Sound.pll"\
 /implib:"$(OUTDIR)/Sound.lib" 
DEF_FILE= \
	".\Sound.DEF"
LINK32_OBJS= \
	"$(INTDIR)\Sound.obj"

"WinDebug\Sound.pll" : "$(OUTDIR)" $(DEF_FILE)\
 $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ENDIF 

.c{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.cpp{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.cxx{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.c{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

.cpp{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

.cxx{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

################################################################################
# Begin Target

# Name "Sound - Win32 Release"
# Name "Sound - Win32 Debug"

!IF  "$(CFG)" == "Sound - Win32 Release"

!ELSEIF  "$(CFG)" == "Sound - Win32 Debug"

!ENDIF 

################################################################################
# Begin Source File

SOURCE=.\Sound.DEF

!IF  "$(CFG)" == "Sound - Win32 Release"

!ELSEIF  "$(CFG)" == "Sound - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\Sound.CPP
DEP_CPP_SOUND=\
	"..\..\..\av.h"\
	"..\..\..\config.h"\
	"..\..\..\cop.h"\
	"..\..\..\cv.h"\
	"..\..\..\dosish.h"\
	"..\..\..\embed.h"\
	"..\..\..\form.h"\
	"..\..\..\gv.h"\
	"..\..\..\handy.h"\
	"..\..\..\hv.h"\
	"..\..\..\IPerlSup.h"\
	"..\..\..\mg.h"\
	"..\..\..\nt.h"\
	"..\..\..\ntpp.h"\
	"..\..\..\NTXSub.h"\
	"..\..\..\op.h"\
	"..\..\..\opcode.h"\
	"..\..\..\perllib.h"\
	"..\..\..\perly.h"\
	"..\..\..\pp.h"\
	"..\..\..\proto.h"\
	"..\..\..\regexp.h"\
	"..\..\..\scope.h"\
	"..\..\..\sv.h"\
	"..\..\..\unixish.h"\
	"..\..\..\util.h"\
	".\../../../EXTERN.h"\
	".\../../../inc\dirent.h"\
	".\../../../perl.h"\
	".\../../../XSUB.h"\
	{$(INCLUDE)}"\sys\STAT.H"\
	{$(INCLUDE)}"\sys\TYPES.H"\
	
NODEP_CPP_SOUND=\
	"..\..\..\vmsish.h"\
	

"$(INTDIR)\Sound.obj" : $(SOURCE) $(DEP_CPP_SOUND) "$(INTDIR)"


# End Source File
# End Target
# End Project
################################################################################
