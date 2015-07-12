// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.datasource;

import com.etermax.gamescommon.login.datasource.a;
import com.etermax.tools.a.a.c;
import java.util.ArrayList;
import java.util.Iterator;

// Referenced classes of package com.etermax.gamescommon.datasource:
//            e, f

class a
    implements c
{

    final long a;
    final e b;

    public Void a()
    {
        b.c.a(com.etermax.gamescommon.datasource.e.c(b).e(), a);
        if (e.b(b) != null)
        {
            for (Iterator iterator = e.b(b).iterator(); iterator.hasNext(); ((f)iterator.next()).b(Long.valueOf(a))) { }
        }
        return null;
    }

    public Object b()
    {
        return a();
    }

    .a(e e1, long l)
    {
        b = e1;
        a = l;
        super();
    }
}
