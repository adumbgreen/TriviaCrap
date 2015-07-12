// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.media.MediaPlayer;
import android.os.Handler;

// Referenced classes of package com.admarvel.android.ads:
//            AdMarvelActivity, AdMarvelInternalWebView

class b
    implements android.media.ionListener
{

    final AdMarvelActivity a;
    final AdMarvelInternalWebView b;
    final ew c;

    public void onCompletion(MediaPlayer mediaplayer)
    {
         ;
        if (a.d)
        {
            if (AdMarvelActivity.x(a) != null && AdMarvelActivity.x(a).length() > 0)
            {
                b.loadUrl((new StringBuilder()).append("javascript:").append(AdMarvelActivity.x(a)).append("()").toString());
            }
        } else
        {
            b.loadUrl("javascript:AdApp.videoView().end();");
        }
         = new nit>(a);
        AdMarvelActivity.f(a).post();
    }

    ew(ew ew, AdMarvelActivity admarvelactivity, AdMarvelInternalWebView admarvelinternalwebview)
    {
        c = ew;
        a = admarvelactivity;
        b = admarvelinternalwebview;
        super();
    }
}
