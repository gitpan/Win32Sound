/*
 * Sound.CPP
 * 19 Nov 96 by Aldo Calpini
 *
 * XS interface to play sound (can you hear me?)
 * based on Registry.CPP written by Jesse Dougherty
 *
 * Version: 0.03 08 Apr 97
 *
 */

#define  WIN32_LEAN_AND_MEAN
#include <windows.h>
#include <mmsystem.h>

#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"
// Section for the constant definitions.
#define CROAK croak

#define SUCCESSRETURNED(x)	(x == ERROR_SUCCESS)
#define INETRETURN(x) XSRETURN_IV(SUCCESSRETURNED(x))

#define SETIV(index,value) sv_setiv(ST(index), value)
#define SETPV(index,string) sv_setpv(ST(index), string)
#define SETPVN(index, buffer, length) sv_setpvn(ST(index), (char*)buffer, length)

#define NEW(x,v,n,t)  (v = (t*)safemalloc((MEM_SIZE)((n) * sizeof(t))))
#define PERLSvIV(sv) (SvIOK(sv) ? SvIVX(sv) : sv_2iv(sv))
#define PERLSvPV(sv, lp) (SvPOK(sv) ? ((lp = SvCUR(sv)), SvPVX(sv)) : sv_2pv(sv, &lp))

#define PERLPUSHMARK(p) if (++markstack_ptr == markstack_max)	\
			markstack_grow();			\
		    *markstack_ptr = (p) - stack_base

#define PERLXPUSHs(s)	do {\
 		if (stack_max - sp < 1) {\
			    sp = stack_grow(sp, sp, 1);\
			}\
  (*++sp = (s)); } while (0)


DWORD
constant(CPerl* pPerl,char *name, int arg)
{
    errno = 0;
    switch (*name) {
    case 'A':
		break;
    case 'B':
		break;
	case 'C':
		break;
    case 'D':
		break;
    case 'E':
		break;
    case 'F':
		break;
    case 'G':
		break;
    case 'H':
		break;
    case 'I':
		break;
    case 'J':
		break;
    case 'K':
		break;
    case 'L':
		break;
    case 'M':
		break;
    case 'N':
		break;
    case 'O':
		break;
    case 'P':
		break;
    case 'Q':
		break;
    case 'R':
		break;
    case 'S':
		if (strEQ(name, "SND_SYNC"))
			#ifdef SND_SYNC
				return SND_SYNC;
			#else
				goto not_there;
			#endif
		if (strEQ(name, "SND_ASYNC"))
			#ifdef SND_ASYNC
				return SND_ASYNC;
			#else
				goto not_there;
			#endif
		if (strEQ(name, "SND_NODEFAULT"))
			#ifdef SND_NODEFAULT
				return SND_NODEFAULT;
			#else
				goto not_there;
			#endif
		if (strEQ(name, "SND_MEMORY"))
			#ifdef SND_MEMORY
				return SND_MEMORY;
			#else
				goto not_there;
			#endif
		if (strEQ(name, "SND_LOOP"))
			#ifdef SND_LOOP
				return SND_LOOP;
			#else
				goto not_there;
			#endif
		if (strEQ(name, "SND_NOSTOP"))
			#ifdef SND_NOSTOP
				return SND_NOSTOP;
			#else
				goto not_there;
			#endif
		if (strEQ(name, "SND_NOWAIT"))
			#ifdef SND_NOWAIT
				return SND_NOWAIT;
			#else
				goto not_there;
			#endif
		if (strEQ(name, "SND_ALIAS"))
			#ifdef SND_ALIAS
				return SND_ALIAS;
			#else
				goto not_there;
			#endif
		if (strEQ(name, "SND_ALIAS_ID"))
			#ifdef SND_ALIAS_ID
				return SND_ALIAS_ID;
			#else
				goto not_there;
			#endif
		if (strEQ(name, "SND_FILENAME"))
			#ifdef SND_FILENAME
				return SND_FILENAME;
			#else
				goto not_there;
			#endif
		if (strEQ(name, "SND_RESOURCE"))
			#ifdef SND_RESOURCE
				return SND_RESOURCE;
			#else
				goto not_there;
			#endif
		if (strEQ(name, "SND_PURGE"))
			#ifdef SND_PURGE
				return SND_PURGE;
			#else
				goto not_there;
			#endif
		if (strEQ(name, "SND_APPLICATION"))
			#ifdef SND_APPLICATION
				return SND_APPLICATION;
			#else
				goto not_there;
			#endif
		if (strEQ(name, "SND_ALIAS_START"))
			#ifdef SND_ALIAS_START
				return SND_ALIAS_START;
			#else
				goto not_there;
			#endif
		if (strEQ(name, "SND_ALIAS_SYSTEMASTERISK"))
			#ifdef SND_ALIAS_SYSTEMASTERISK
				return SND_ALIAS_SYSTEMASTERISK;
			#else
				goto not_there;
			#endif
		if (strEQ(name, "SND_ALIAS_SYSTEMQUESTION"))
			#ifdef SND_ALIAS_SYSTEMQUESTION
				return SND_ALIAS_SYSTEMQUESTION;
			#else
				goto not_there;
			#endif
		if (strEQ(name, "SND_ALIAS_SYSTEMHAND"))
			#ifdef SND_ALIAS_SYSTEMHAND
				return SND_ALIAS_SYSTEMHAND;
			#else
				goto not_there;
			#endif
		if (strEQ(name, "SND_ALIAS_SYSTEMEXIT"))
			#ifdef SND_ALIAS_SYSTEMEXIT
				return SND_ALIAS_SYSTEMEXIT;
			#else
				goto not_there;
			#endif
		if (strEQ(name, "SND_ALIAS_SYSTEMSTART"))
			#ifdef SND_ALIAS_SYSTEMSTART
				return SND_ALIAS_SYSTEMSTART;
			#else
				goto not_there;
			#endif
		if (strEQ(name, "SND_ALIAS_SYSTEMWELCOME"))
			#ifdef SND_ALIAS_SYSTEMWELCOME
				return SND_ALIAS_SYSTEMWELCOME;
			#else
				goto not_there;
			#endif
		if (strEQ(name, "SND_ALIAS_SYSTEMEXCLAMATION"))
			#ifdef SND_ALIAS_SYSTEMEXCLAMATION
				return SND_ALIAS_SYSTEMEXCLAMATION;
			#else
				goto not_there;
			#endif
		if (strEQ(name, "SND_ALIAS_SYSTEMDEFAULT"))
			#ifdef SND_ALIAS_SYSTEMDEFAULT
				return SND_ALIAS_SYSTEMDEFAULT;
			#else
				goto not_there;
			#endif
		break;
    case 'T':
		break;
    case 'U':
		break;
    case 'V':
		break;
    case 'W':
		break;
    case 'X':
		break;
    case 'Y':
		break;
    case 'Z':
		break;
    }
    errno = EINVAL;
    return 0;

not_there:
    errno = ENOENT;
    return 0;
}


XS(XS_Win32__Sound_constant)
{
    dXSARGS;

    if (items != 2) {
		croak("Usage: Win32::Sound::constant(name,arg)");
    }
    {
		char *	name = (char *)SvPV(ST(0),na);
		int	arg = (int)SvIV(ST(1));
		DWORD RETVAL;

		RETVAL = constant(pPerl,name, arg);
		ST(0) = sv_newmortal();
		sv_setiv(ST(0), (IV)RETVAL);
    }
    XSRETURN(1);
}



XS(XS_Win32__Sound_Play) {
	HANDLE myhandle;
	
	dXSARGS;
	UINT flag=0; 
	LPCSTR name;
	if(items>0) {
		name=(LPCSTR)PERLSvPV(ST(0),na);
	} else {
		name=NULL;
	}
	if(items>1) {
		flag=(UINT)PERLSvIV(ST(1));
	}
	if(sndPlaySound(name, flag)) {
		XSRETURN_YES;
	} else {
		XSRETURN_NO;
	}
}


XS(XS_Win32__Sound_Stop) {
	HANDLE myhandle;
	
	dXSARGS;
	if(sndPlaySound(NULL, 0)) {
		XSRETURN_YES;
	} else {
		XSRETURN_NO;
	}
}


XS(boot_Win32__Sound)
{
	dXSARGS;
	char* file = __FILE__;

	newXS("Win32::Sound::constant", XS_Win32__Sound_constant, file);
	newXS("Win32::Sound::Play", XS_Win32__Sound_Play, file);
	newXS("Win32::Sound::Stop", XS_Win32__Sound_Stop, file);
	ST(0) = &sv_yes;
	XSRETURN(1);
}
