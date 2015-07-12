// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.adsinterface;


// Referenced classes of package com.etermax.adsinterface:
//            d

public class f
{

    public static d a = null;

    public static void a()
    {
        a = null;
    }

    public static void a(d d1)
    {
        a = d1;
    }

    public static void b()
    {
        if (a != null)
        {
            a.a();
        }
        a = null;
    }

}
