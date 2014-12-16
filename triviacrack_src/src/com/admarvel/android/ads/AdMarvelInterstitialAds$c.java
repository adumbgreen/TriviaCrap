// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.content.Context;
import com.admarvel.android.util.a;

// Referenced classes of package com.admarvel.android.ads:
//            AdMarvelAd

class b
    implements Runnable
{

    private final AdMarvelAd a;
    private final Context b;

    public void run()
    {
        if (a != null)
        {
            a.setResponseJson();
        }
        a a1 = com.admarvel.android.util.a.b(b);
        if (a1 != null && a != null)
        {
            int i = a1.a(b);
            a.setAdHistoryCounter(i);
            a1.a(a.getAdHistoryDumpString(), i);
        }
    }

    public (AdMarvelAd admarvelad, Context context)
    {
        a = admarvelad;
        b = context;
    }
}
