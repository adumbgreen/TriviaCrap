// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.media.MediaPlayer;
import android.os.Handler;

// Referenced classes of package com.admarvel.android.ads:
//            AdMarvelActivity, AdMarvelInternalWebView

class b
    implements android.media.stener
{

    final AdMarvelActivity a;
    final AdMarvelInternalWebView b;
    final ew c;

    public boolean onError(MediaPlayer mediaplayer, int i, int j)
    {
        b b1 = new nit>(a);
        AdMarvelActivity.f(a).post(b1);
        if (a.d && AdMarvelActivity.y(a) != null && AdMarvelActivity.y(a).length() > 0)
        {
            b.loadUrl((new StringBuilder()).append("javascript:").append(AdMarvelActivity.y(a)).append("()").toString());
        }
        return false;
    }

    ew(ew ew, AdMarvelActivity admarvelactivity, AdMarvelInternalWebView admarvelinternalwebview)
    {
        c = ew;
        a = admarvelactivity;
        b = admarvelinternalwebview;
        super();
    }
}
