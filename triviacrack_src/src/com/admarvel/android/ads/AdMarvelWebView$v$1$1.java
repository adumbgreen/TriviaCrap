// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.os.Handler;

// Referenced classes of package com.admarvel.android.ads:
//            AdMarvelInternalWebView, AdMarvelWebView

class a
    implements Runnable
{

    final w.setLayerType a;

    public void run()
    {
        a.a.setLayerType(1, null);
    }

    w(w w)
    {
        a = w;
        super();
    }

    // Unreferenced inner class com/admarvel/android/ads/AdMarvelWebView$v$1

/* anonymous class */
    class AdMarvelWebView.v._cls1
        implements f.a
    {

        final AdMarvelWebView a;
        final AdMarvelInternalWebView b;
        final AdMarvelWebView.v c;

        public void a()
        {
            if (AdMarvelWebView.D(a) != null && AdMarvelWebView.D(a).length() > 0)
            {
                b.setLayerType(2, null);
                b.injectJavaScript((new StringBuilder()).append(AdMarvelWebView.D(a)).append("()").toString());
                b.requestLayout();
                b.invalidate();
                AdMarvelWebView.d(a).postDelayed(new AdMarvelWebView.v._cls1._cls1(this), 500L);
            }
            AdMarvelWebView.h h = new AdMarvelWebView.h(a);
            AdMarvelWebView.d(a).post(h);
        }

            
            {
                c = v;
                a = admarvelwebview;
                b = admarvelinternalwebview;
                super();
            }
    }

}
