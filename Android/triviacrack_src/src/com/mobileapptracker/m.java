// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mobileapptracker;

import org.json.JSONArray;

// Referenced classes of package com.mobileapptracker:
//            h

final class m
    implements Runnable
{

    final String a;
    final JSONArray b;
    final double c;
    final String d;
    final String e;
    final String f;
    final String g;
    final h h;

    m(h h1, String s, JSONArray jsonarray, double d1, String s1, String s2, 
            String s3, String s4)
    {
        h = h1;
        a = s;
        b = jsonarray;
        c = d1;
        d = s1;
        e = s2;
        f = s3;
        g = s4;
        super();
    }

    public final void run()
    {
        com.mobileapptracker.h.a(h, a, b, c, d, e, f, g);
    }
}
