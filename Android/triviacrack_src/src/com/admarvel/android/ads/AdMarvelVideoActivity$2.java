// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import java.util.Comparator;

// Referenced classes of package com.admarvel.android.ads:
//            AdMarvelVideoActivity

class a
    implements Comparator
{

    final AdMarvelVideoActivity a;

    public int a(a a1, a a2)
    {
        return a1.a - a2.a;
    }

    public int compare(Object obj, Object obj1)
    {
        return a((a)obj, (a)obj1);
    }

    (AdMarvelVideoActivity admarvelvideoactivity)
    {
        a = admarvelvideoactivity;
        super();
    }
}
