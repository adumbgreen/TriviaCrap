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
        a a1 = com.admarvel.android.util.a.b(b);
        if (a1 != null && a != null)
        {
            int i = a.getAdHistoryCounter();
            StringBuilder stringbuilder = new StringBuilder();
            stringbuilder.append("/ssr_");
            stringbuilder.append(i);
            stringbuilder.append(".jpg");
            a1.a(stringbuilder.toString());
        }
    }

    public (AdMarvelAd admarvelad, Context context)
    {
        a = admarvelad;
        b = context;
    }
}
