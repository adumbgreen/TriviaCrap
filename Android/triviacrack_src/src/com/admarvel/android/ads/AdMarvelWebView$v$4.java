// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.media.MediaPlayer;

// Referenced classes of package com.admarvel.android.ads:
//            AdMarvelWebView, AdMarvelInternalWebView

class b
    implements android.media.istener
{

    final AdMarvelWebView a;
    final AdMarvelInternalWebView b;
    final iew c;

    public boolean onError(MediaPlayer mediaplayer, int i, int j)
    {
        if (AdMarvelWebView.D(a) != null && AdMarvelWebView.D(a).length() > 0)
        {
            b.injectJavaScript((new StringBuilder()).append(AdMarvelWebView.D(a)).append("()").toString());
        }
        return false;
    }

    iew(iew iew, AdMarvelWebView admarvelwebview, AdMarvelInternalWebView admarvelinternalwebview)
    {
        c = iew;
        a = admarvelwebview;
        b = admarvelinternalwebview;
        super();
    }
}
