// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.media.MediaPlayer;

// Referenced classes of package com.admarvel.android.ads:
//            AdMarvelWebView, AdMarvelInternalWebView

class b
    implements android.media.tionListener
{

    final AdMarvelWebView a;
    final AdMarvelInternalWebView b;
    final iew c;

    public void onCompletion(MediaPlayer mediaplayer)
    {
        if (AdMarvelWebView.I(a) != null && AdMarvelWebView.I(a).length() > 0)
        {
            b.injectJavaScript((new StringBuilder()).append(AdMarvelWebView.I(a)).append("()").toString());
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
