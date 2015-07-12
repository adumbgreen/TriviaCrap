// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.datasource;

import com.etermax.gamescommon.datasource.dto.AdsDTO;
import org.a.a.b;

// Referenced classes of package com.etermax.gamescommon.datasource:
//            i, h, g

class d extends b
{

    final AdsDTO a;
    final Class b;
    final h c;
    final g d;
    final i e;

    public void a()
    {
        try
        {
            i.a(e, a, b, c, d);
            return;
        }
        catch (Throwable throwable)
        {
            Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), throwable);
        }
    }

    AdsDTO(i j, String s, int k, String s1, AdsDTO adsdto, Class class1, h h, 
            g g)
    {
        e = j;
        a = adsdto;
        b = class1;
        c = h;
        d = g;
        super(s, k, s1);
    }
}
