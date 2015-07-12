// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.media.MediaPlayer;
import android.os.Handler;

// Referenced classes of package com.admarvel.android.ads:
//            AdMarvelWebView, AdMarvelInternalWebView

class b
    implements android.media.edListener
{

    final AdMarvelWebView a;
    final AdMarvelInternalWebView b;
    final iew c;

    public void onPrepared(MediaPlayer mediaplayer)
    {
        if (AdMarvelWebView.E(a))
        {
            mediaplayer.setVolume(0.0F, 0.0F);
            AdMarvelWebView.e(a, false);
        }
        if (AdMarvelWebView.F(a) != null && AdMarvelWebView.F(a).length() > 0)
        {
            b.injectJavaScript((new StringBuilder()).append(AdMarvelWebView.F(a)).append("()").toString());
        }
        if (AdMarvelWebView.G(a) != null && AdMarvelWebView.G(a).length() > 0)
        {
            b.injectJavaScript((new StringBuilder()).append(AdMarvelWebView.G(a)).append("()").toString());
        }
        if (AdMarvelWebView.H(a) == null)
        {
            AdMarvelWebView.a(a, new init>(a, b));
            AdMarvelWebView.d(a).postDelayed(AdMarvelWebView.H(a), 500L);
        }
    }

    iew(iew iew, AdMarvelWebView admarvelwebview, AdMarvelInternalWebView admarvelinternalwebview)
    {
        c = iew;
        a = admarvelwebview;
        b = admarvelinternalwebview;
        super();
    }
}
