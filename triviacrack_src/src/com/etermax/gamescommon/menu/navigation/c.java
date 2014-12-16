// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.menu.navigation;

import android.content.Context;

// Referenced classes of package com.etermax.gamescommon.menu.navigation:
//            e, f, d

public class c
{

    private String a;
    private int b;
    private e c;
    private d d;

    public c(Context context, e e1, d d1)
    {
        c = e1;
        if (e1.e())
        {
            a = context.getString(e1.c());
        } else
        if (e1.b().c())
        {
            a = context.getString(e1.b().a());
        } else
        {
            throw new RuntimeException((new StringBuilder()).append("Falta configurar el t\355tulo para el item: ").append(e1.b().name()).toString());
        }
        if (!e1.f()) goto _L2; else goto _L1
_L1:
        b = e1.d();
_L4:
        d = d1;
        return;
_L2:
        if (!e1.b().d())
        {
            break; /* Loop/switch isn't completed */
        }
        b = e1.b().b();
        if (true) goto _L4; else goto _L3
_L3:
        if (e1.b() == f.k) goto _L4; else goto _L5
_L5:
        throw new RuntimeException((new StringBuilder()).append("Falta configurar el \355cono para el item: ").append(e1.b().name()).toString());
    }

    public String a()
    {
        return a;
    }

    public int b()
    {
        return b;
    }

    public f c()
    {
        return c.b();
    }

    public boolean d()
    {
        if (d != null)
        {
            return d.b(this);
        } else
        {
            return false;
        }
    }

    public int e()
    {
        if (d != null)
        {
            return d.a(this);
        } else
        {
            return 0;
        }
    }

    public String f()
    {
        return c.a();
    }

    public e g()
    {
        return c;
    }
}
