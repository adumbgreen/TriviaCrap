// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;


// Referenced classes of package com.admarvel.android.ads:
//            f, AdMarvelWebView, AdMarvelInternalWebView

class c
    implements Runnable
{

    final f a;
    final AdMarvelWebView b;
    final AdMarvelInternalWebView c;
    final ew d;

    public void run()
    {
        if (a.getHeight() == 0 && AdMarvelWebView.D(b) != null && AdMarvelWebView.D(b).length() > 0)
        {
            c.injectJavaScript((new StringBuilder()).append(AdMarvelWebView.D(b)).append("()").toString());
            return;
        } else
        {
            a.f();
            return;
        }
    }

    ew(ew ew, f f1, AdMarvelWebView admarvelwebview, AdMarvelInternalWebView admarvelinternalwebview)
    {
        d = ew;
        a = f1;
        b = admarvelwebview;
        c = admarvelinternalwebview;
        super();
    }
}
