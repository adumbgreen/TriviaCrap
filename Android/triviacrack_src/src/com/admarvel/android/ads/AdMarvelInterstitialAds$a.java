// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.content.Context;
import android.os.Handler;
import java.lang.ref.WeakReference;
import java.util.Map;

// Referenced classes of package com.admarvel.android.ads:
//            AdMarvelInterstitialAds, j

class k
    implements Runnable
{

    private final Map a;
    private final String b;
    private final String c;
    private final String d;
    private final int e;
    private final String f;
    private final WeakReference g;
    private final int h;
    private final String i;
    private final WeakReference j;
    private final Handler k;

    public void run()
    {
        AdMarvelInterstitialAds admarvelinterstitialads = (AdMarvelInterstitialAds)g.get();
        Context context = (Context)j.get();
        if (admarvelinterstitialads != null && context != null)
        {
            j j1 = new j(context);
            Object aobj[] = new Object[10];
            aobj[0] = a;
            aobj[1] = b;
            aobj[2] = c;
            aobj[3] = d;
            aobj[4] = Integer.valueOf(e);
            aobj[5] = f;
            aobj[6] = admarvelinterstitialads;
            aobj[7] = Integer.valueOf(h);
            aobj[8] = i;
            aobj[9] = k;
            j1.execute(aobj);
        }
    }

    public (Map map, String s, String s1, String s2, int l, String s3, AdMarvelInterstitialAds admarvelinterstitialads, 
            int i1, String s4, Context context, Handler handler)
    {
        a = map;
        b = s;
        c = s1;
        d = s2;
        e = l;
        f = s3;
        g = new WeakReference(admarvelinterstitialads);
        h = i1;
        i = s4;
        j = new WeakReference(context);
        k = handler;
    }
}
