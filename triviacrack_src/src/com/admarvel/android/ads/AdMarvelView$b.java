// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.content.Context;
import android.os.Handler;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.Map;

// Referenced classes of package com.admarvel.android.ads:
//            AdMarvelView, ac, q

class l
    implements Runnable
{

    private final File a;
    private final WeakReference b;
    private final Map c;
    private final String d;
    private final String e;
    private final String f;
    private final int g;
    private final String h;
    private final WeakReference i;
    private final int j;
    private final String k;
    private final Handler l;

    public void run()
    {
        Context context;
        AdMarvelView admarvelview;
label0:
        {
            context = (Context)b.get();
            admarvelview = (AdMarvelView)i.get();
            if (context != null && admarvelview != null)
            {
                if (ac.a() < 11)
                {
                    break label0;
                }
                l.post(new <init>(a, context, c, d, e, f, g, h, admarvelview, j, k, l));
            }
            return;
        }
        q q1 = new q(a, context);
        Object aobj[] = new Object[12];
        aobj[0] = c;
        aobj[1] = d;
        aobj[2] = e;
        aobj[3] = f;
        aobj[4] = Integer.valueOf(g);
        aobj[5] = h;
        aobj[6] = admarvelview;
        aobj[7] = Integer.valueOf(j);
        aobj[8] = k;
        aobj[9] = l;
        aobj[10] = Boolean.valueOf(admarvelview.b());
        aobj[11] = Boolean.valueOf(AdMarvelView.h(admarvelview));
        q1.execute(aobj);
    }

    public (File file, Context context, Map map, String s, String s1, String s2, int i1, 
            String s3, AdMarvelView admarvelview, int j1, String s4, Handler handler)
    {
        b = new WeakReference(context);
        a = file;
        c = map;
        d = s;
        e = s1;
        f = s2;
        g = i1;
        h = s3;
        i = new WeakReference(admarvelview);
        j = j1;
        k = s4;
        l = handler;
    }
}
