// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.android;

import java.util.TreeMap;

// Referenced classes of package com.millennialmedia.android:
//            MMConversionTracker, HttpGetRequest, MMLog

final class d
    implements Runnable
{

    final String a;
    final boolean b;
    final long c;
    final TreeMap d;

    public void run()
    {
        HttpGetRequest httpgetrequest = new HttpGetRequest();
        try
        {
            httpgetrequest.a(a, b, c, d);
            return;
        }
        catch (Exception exception)
        {
            MMLog.a("MMConversionTracker", "Problem doing conversion tracking.", exception);
        }
    }

    (String s, boolean flag, long l, TreeMap treemap)
    {
        a = s;
        b = flag;
        c = l;
        d = treemap;
        super();
    }
}
