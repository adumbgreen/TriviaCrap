// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;


// Referenced classes of package com.admarvel.android.ads:
//            p, AdMarvelActivity, AdMarvelInternalWebView

class c
    implements Runnable
{

    final p a;
    final AdMarvelInternalWebView b;
    final AdMarvelActivity c;
    final ew d;

    public void run()
    {
        if (a.getHeight() == 0)
        {
            b.loadUrl((new StringBuilder()).append("javascript:").append(AdMarvelActivity.y(c)).append("()").toString());
            return;
        } else
        {
            a.start();
            return;
        }
    }

    ew(ew ew, p p1, AdMarvelInternalWebView admarvelinternalwebview, AdMarvelActivity admarvelactivity)
    {
        d = ew;
        a = p1;
        b = admarvelinternalwebview;
        c = admarvelactivity;
        super();
    }
}
