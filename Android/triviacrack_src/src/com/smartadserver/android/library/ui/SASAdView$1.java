// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.smartadserver.android.library.ui;


// Referenced classes of package com.smartadserver.android.library.ui:
//            SASAdView, a

class h
    implements Runnable
{

    final int a;
    final String b;
    final int c;
    final boolean d;
    final String e;
    final a f;
    final int g;
    final boolean h;
    final SASAdView i;

    public void run()
    {
        SASAdView.a(i, a, b, c, d, e, f, g, h);
    }

    (SASAdView sasadview, int j, String s, int k, boolean flag, String s1, a a1, 
            int l, boolean flag1)
    {
        i = sasadview;
        a = j;
        b = s;
        c = k;
        d = flag;
        e = s1;
        f = a1;
        g = l;
        h = flag1;
        super();
    }
}
