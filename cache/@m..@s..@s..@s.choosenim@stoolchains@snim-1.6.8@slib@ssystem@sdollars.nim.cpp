/* Generated by Nim Compiler v1.6.8 */
/* Compiled for: Linux, amd64, gcc */
/* Command for C compiler:
   g++ -c -std=gnu++14 -funsigned-char  -w -fmax-errors=3 -fpermissive   -I/home/nick/.choosenim/toolchains/nim-1.6.8/lib -I/home/nick/Projects/nimd/src -o /home/nick/Projects/nimd/cache/@m..@s..@s..@s.choosenim@stoolchains@snim-1.6.8@slib@ssystem@sdollars.nim.cpp.o /home/nick/Projects/nimd/cache/@m..@s..@s..@s.choosenim@stoolchains@snim-1.6.8@slib@ssystem@sdollars.nim.cpp */
#define NIM_INTBITS 64

#include "nimbase.h"
#include <string.h>
#undef LANGUAGE_C
#undef MIPSEB
#undef MIPSEL
#undef PPC
#undef R3000
#undef R4000
#undef i386
#undef linux
#undef mips
#undef near
#undef far
#undef powerpc
#undef unix
  #  define nimfr_(proc, file) \
      TFrame FR_; \
      FR_.procname = proc; FR_.filename = file; FR_.line = 0; FR_.len = 0; nimFrame(&FR_);

  #  define nimfrs_(proc, file, slots, length) \
      struct {TFrame* prev;NCSTRING procname;NI line;NCSTRING filename; NI len; VarSlot s[slots];} FR_; \
      FR_.procname = proc; FR_.filename = file; FR_.line = 0; FR_.len = length; nimFrame((TFrame*)&FR_);

  #  define nimln_(n, file) \
      FR_.line = n; FR_.filename = file;
  struct NimStringDesc;
struct TGenericSeq;
struct TGenericSeq {
NI len;
NI reserved;
};
struct NimStringDesc : public TGenericSeq {
NIM_CHAR data[SEQ_DECL_SIZE];
};
typedef NF32 tyArray__9aTCwbdg1cSQimdVd0OEKVw[4];
static N_INLINE(void, addInt__stdZprivateZdigitsutils_189)(NimStringDesc*& result, NI x);
N_LIB_PRIVATE N_NIMCALL(void, addInt__stdZprivateZdigitsutils_167)(NimStringDesc*& result, NI64 x);
static N_INLINE(void, nimFrame)(TFrame* s);
N_LIB_PRIVATE N_NOINLINE(void, callDepthLimitReached__system_2993)(void);
static N_INLINE(void, popFrame)(void);
N_LIB_PRIVATE N_NIMCALL(NimStringDesc*, collectionToString__nimd_1058)(tyArray__9aTCwbdg1cSQimdVd0OEKVw x, NimStringDesc* prefix, NimStringDesc* separator, NimStringDesc* suffix);
N_LIB_PRIVATE N_NIMCALL(NimStringDesc*, copyString)(NimStringDesc* src);
static N_INLINE(void, appendString)(NimStringDesc* dest, NimStringDesc* src);
static N_INLINE(void, copyMem__system_1727)(void* dest, void* source, NI size);
static N_INLINE(void, nimCopyMem)(void* dest, void* source, NI size);
N_LIB_PRIVATE N_NIMCALL(NimStringDesc*, resizeString)(NimStringDesc* dest, NI addlen);
N_LIB_PRIVATE N_NIMCALL(void, addQuoted__nimd_1095)(NimStringDesc*& s, NF32 x);
STRING_LITERAL(TM__n49a9aYp5BrbXv9a6OCpJYm0g_2, "[", 1);
STRING_LITERAL(TM__n49a9aYp5BrbXv9a6OCpJYm0g_3, ", ", 2);
STRING_LITERAL(TM__n49a9aYp5BrbXv9a6OCpJYm0g_4, "]", 1);
extern TFrame* framePtr__system_2564;
extern TFrame* framePtr__system_2564;
extern TFrame* framePtr__system_2564;
extern TFrame* framePtr__system_2564;
extern TFrame* framePtr__system_2564;
extern TFrame* framePtr__system_2564;
static N_INLINE(void, nimFrame)(TFrame* s) {
	{
		if (!(framePtr__system_2564 == ((TFrame*) NIM_NIL))) goto LA3_;
{		(*s).calldepth = ((NI16) 0);
}	}
	goto LA1_;
	LA3_: ;
	{
		(*s).calldepth = (NI16)((*framePtr__system_2564).calldepth + ((NI16) 1));
	}
	LA1_: ;
	(*s).prev = framePtr__system_2564;
	framePtr__system_2564 = s;
	{
		if (!((*s).calldepth == ((NI16) 2000))) goto LA8_;
{		callDepthLimitReached__system_2993();
}	}
	LA8_: ;
}
static N_INLINE(void, popFrame)(void) {
	framePtr__system_2564 = (*framePtr__system_2564).prev;
}
N_LIB_PRIVATE N_NIMCALL(NimStringDesc*, dollar___systemZdollars_6)(NI64 x) {
	NimStringDesc* result;
	nimfr_("$", "/home/nick/.choosenim/toolchains/nim-1.6.8/lib/system/dollars.nim");
	result = NIM_NIL;
	nimln_(16, "/home/nick/.choosenim/toolchains/nim-1.6.8/lib/system/dollars.nim");
	addInt__stdZprivateZdigitsutils_167(result, x);
	popFrame();
	return result;
}
static N_INLINE(void, addInt__stdZprivateZdigitsutils_189)(NimStringDesc*& result, NI x) {
	nimfr_("addInt", "/home/nick/.choosenim/toolchains/nim-1.6.8/lib/std/private/digitsutils.nim");
	nimln_(117, "/home/nick/.choosenim/toolchains/nim-1.6.8/lib/std/private/digitsutils.nim");
	addInt__stdZprivateZdigitsutils_167(result, ((NI64) (x)));
	popFrame();
}
N_LIB_PRIVATE N_NIMCALL(NimStringDesc*, dollar___systemZdollars_3)(NI x) {
	NimStringDesc* result;
	nimfr_("$", "/home/nick/.choosenim/toolchains/nim-1.6.8/lib/system/dollars.nim");
	result = NIM_NIL;
	nimln_(12, "/home/nick/.choosenim/toolchains/nim-1.6.8/lib/system/dollars.nim");
	addInt__stdZprivateZdigitsutils_189(result, x);
	popFrame();
	return result;
}
static N_INLINE(void, nimCopyMem)(void* dest, void* source, NI size) {
	void* T1_ = memcpy(dest, source, ((size_t) (size)));
}
static N_INLINE(void, copyMem__system_1727)(void* dest, void* source, NI size) {
	nimCopyMem(dest, source, size);
}
static N_INLINE(void, appendString)(NimStringDesc* dest, NimStringDesc* src) {
	{
		if (!!((src == ((NimStringDesc*) NIM_NIL)))) goto LA3_;
{		copyMem__system_1727(((void*) ((&(*dest).data[(*dest).len]))), ((void*) ((*src).data)), ((NI) ((NI)((*src).len + ((NI) 1)))));
		(*dest).len += (*src).len;
}	}
	LA3_: ;
}
N_LIB_PRIVATE N_NIMCALL(NimStringDesc*, collectionToString__nimd_1058)(tyArray__9aTCwbdg1cSQimdVd0OEKVw x, NimStringDesc* prefix, NimStringDesc* separator, NimStringDesc* suffix) {
	NimStringDesc* result;
	nimfr_("collectionToString", "/home/nick/.choosenim/toolchains/nim-1.6.8/lib/system/dollars.nim");
	result = NIM_NIL;
	nimln_(121, "/home/nick/.choosenim/toolchains/nim-1.6.8/lib/system/dollars.nim");
	result = copyString(prefix);
	nimln_(122, "/home/nick/.choosenim/toolchains/nim-1.6.8/lib/system/dollars.nim");
	NIM_BOOL firstElement = NIM_TRUE;
	{
		NF32 value;
		value = (NF32)0;
		nimln_(33, "/home/nick/.choosenim/toolchains/nim-1.6.8/lib/system/iterators.nim");
		NI i = ((NI) 0);
		{
			nimln_(34, "/home/nick/.choosenim/toolchains/nim-1.6.8/lib/system/iterators.nim");
			while (1) {
				nimln_(123, "/home/nick/.choosenim/toolchains/nim-1.6.8/lib/system/dollars.nim");
				value = x[(i)- 0];
				{
					if (!firstElement) goto LA6_;
{					nimln_(125, "/home/nick/.choosenim/toolchains/nim-1.6.8/lib/system/dollars.nim");
					firstElement = NIM_FALSE;
}				}
				goto LA4_;
				LA6_: ;
				{
					nimln_(127, "/home/nick/.choosenim/toolchains/nim-1.6.8/lib/system/dollars.nim");
					result = resizeString(result, (separator ? separator->len : 0) + 0);
appendString(result, separator);
				}
				LA4_: ;
				nimln_(123, "/home/nick/.choosenim/toolchains/nim-1.6.8/lib/system/dollars.nim");
				addQuoted__nimd_1095(result, value);
				nimln_(36, "/home/nick/.choosenim/toolchains/nim-1.6.8/lib/system/iterators.nim");
				{
					if (!(((NI) 3) <= ((NI) (i)))) goto LA11_;
{					goto LA2;
}				}
				LA11_: ;
				nimln_(37, "/home/nick/.choosenim/toolchains/nim-1.6.8/lib/system/iterators.nim");
				i += ((NI) 1);
			}
		} LA2: ;
	}
	nimln_(137, "/home/nick/.choosenim/toolchains/nim-1.6.8/lib/system/dollars.nim");
	result = resizeString(result, (suffix ? suffix->len : 0) + 0);
appendString(result, suffix);
	popFrame();
	return result;
}
N_LIB_PRIVATE N_NIMCALL(NimStringDesc*, dollar___nimd_1053)(tyArray__9aTCwbdg1cSQimdVd0OEKVw x) {
	NimStringDesc* result;
	nimfr_("$", "/home/nick/.choosenim/toolchains/nim-1.6.8/lib/system/dollars.nim");
	result = NIM_NIL;
	nimln_(168, "/home/nick/.choosenim/toolchains/nim-1.6.8/lib/system/dollars.nim");
	nimln_(169, "/home/nick/.choosenim/toolchains/nim-1.6.8/lib/system/dollars.nim");
	result = collectionToString__nimd_1058(x, ((NimStringDesc*) &TM__n49a9aYp5BrbXv9a6OCpJYm0g_2), ((NimStringDesc*) &TM__n49a9aYp5BrbXv9a6OCpJYm0g_3), ((NimStringDesc*) &TM__n49a9aYp5BrbXv9a6OCpJYm0g_4));
	popFrame();
	return result;
}
