// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.user.a;

import com.etermax.gamescommon.user.b.c;

// Referenced classes of package com.etermax.gamescommon.user.a:
//            g

class 
{

    static final int a[];

    static 
    {
        a = new int[c.values().length];
        try
        {
            a[c.b.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror) { }
        try
        {
            a[c.a.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror1)
        {
            return;
        }
    }
}
