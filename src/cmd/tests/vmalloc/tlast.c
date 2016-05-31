/***********************************************************************
*                                                                      *
*               This software is part of the ast package               *
*          Copyright (c) 1999-2011 AT&T Intellectual Property          *
*                      and is licensed under the                       *
*                 Eclipse Public License, Version 1.0                  *
*                    by AT&T Intellectual Property                     *
*                                                                      *
*                A copy of the License is available at                 *
*          http://www.eclipse.org/org/documents/epl-v10.html           *
*         (with md5 checksum b35adb5213ca9657e911e9befb180842)         *
*                                                                      *
*              Information and Software Systems Research               *
*                            AT&T Research                             *
*                           Florham Park NJ                            *
*                                                                      *
*                 Glenn Fowler <gsf@research.att.com>                  *
*                                                                      *
***********************************************************************/
#include	"vmtest.h"

tmain()
{
	Void_t*		addr[10];
	Vmalloc_t*	vm;
	int		i;

	Vmdcheap->round = 127;
	if(!(vm = vmopen(Vmdcheap,Vmlast,0)) )
		terror("Can't open");

	for(i = 0; i < 10; ++i)
	{	addr[i] = vmalloc(vm,8);
		if((((Vmulong_t)addr[i])%ALIGN) != 0)
			terror("Unaligned addr");
	}

	if(vmfree(vm,addr[0]) >= 0)
		terror("Free non-last element succeeds?");

	if(vmresize(vm,addr[9],256,1) == NIL(Void_t*))
		terror("Resize last element does not succeed?");

#ifdef DEBUG
	for(i = 0; i < 10; ++i)
		printf("size[%d]=%d\n",i,vmsize(vm,addr[i]));
	printf("vmextent=%d\n",vmsize(vm,NIL(Void_t*)));
#endif

	texit(0);
}
