// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.datasource;

import java.util.Date;
import org.a.a.b;

// Referenced classes of package com.etermax.gamescommon.datasource:
//            d, c

class c extends b
{

    final Long a;
    final Date b;
    final c c;
    final d d;

    public void a()
    {
        try
        {
            com.etermax.gamescommon.datasource.d.a(d, a, b, c);
            return;
        }
        catch (Throwable throwable)
        {
            Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), throwable);
        }
    }

    er(d d1, String s, int i, String s1, Long long1, Date date, c c1)
    {
        d = d1;
        a = long1;
        b = date;
        c = c1;
        super(s, i, s1);
    }
}
