// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.os.Handler;

// Referenced classes of package com.admarvel.android.ads:
//            AdMarvelWebView, AdMarvelInternalWebView

class b
    implements b
{

    final AdMarvelWebView a;
    final AdMarvelInternalWebView b;
    final iew c;

    public void a()
    {
        if (AdMarvelWebView.D(a) != null && AdMarvelWebView.D(a).length() > 0)
        {
            b.setLayerType(2, null);
            b.injectJavaScript((new StringBuilder()).append(AdMarvelWebView.D(a)).append("()").toString());
            b.requestLayout();
            b.invalidate();
            AdMarvelWebView.d(a).postDelayed(new Runnable() {

                final AdMarvelWebView.v._cls1 a;

                public void run()
                {
                    a.b.setLayerType(1, null);
                }

            
            {
                a = AdMarvelWebView.v._cls1.this;
                super();
            }
            }, 500L);
        }
        b b1 = new nit>(a);
        AdMarvelWebView.d(a).post(b1);
    }

    iew(iew iew, AdMarvelWebView admarvelwebview, AdMarvelInternalWebView admarvelinternalwebview)
    {
        c = iew;
        a = admarvelwebview;
        b = admarvelinternalwebview;
        super();
    }
}
