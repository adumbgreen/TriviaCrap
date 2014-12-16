// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.app.Activity;
import android.content.Context;
import com.admarvel.android.util.a;
import java.lang.ref.WeakReference;

// Referenced classes of package com.admarvel.android.ads:
//            AdMarvelView, AdMarvelAd

class b
    implements Runnable
{

    private final AdMarvelAd a;
    private final Context b;

    public void run()
    {
        a a1 = com.admarvel.android.util.a.b(b);
        if (a1 != null)
        {
            int i = a1.a(b);
            a.setAdHistoryCounter(i);
            a1.a(a.getAdHistoryDumpString(), i);
        }
    }

    public (AdMarvelAd admarvelad, Context context)
    {
        a = admarvelad;
        if (!(context instanceof Activity) && AdMarvelView.d() != null && AdMarvelView.d().get() != null)
        {
            context = (Context)AdMarvelView.d().get();
        }
        b = context;
    }
}
