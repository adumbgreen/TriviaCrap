// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.h.a;


// Referenced classes of package com.etermax.gamescommon.h.a:
//            a, e

class 
{

    static final int a[];

    static 
    {
        a = new int[e.values().length];
        try
        {
            a[e.f.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror) { }
        try
        {
            a[e.b.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            a[e.d.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror2)
        {
            return;
        }
    }
}
