// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.media.MediaPlayer;

// Referenced classes of package com.admarvel.android.ads:
//            AdMarvelActivity, AdMarvelInternalWebView

class b
    implements android.media.dListener
{

    final AdMarvelActivity a;
    final AdMarvelInternalWebView b;
    final ew c;

    public void onPrepared(MediaPlayer mediaplayer)
    {
        if (a.d)
        {
            if (AdMarvelActivity.v(a) != null && AdMarvelActivity.v(a).length() > 0)
            {
                b.loadUrl((new StringBuilder()).append("javascript:").append(AdMarvelActivity.v(a)).append("()").toString());
            }
            if (AdMarvelActivity.w(a) != null && AdMarvelActivity.w(a).length() > 0)
            {
                b.loadUrl((new StringBuilder()).append("javascript:").append(AdMarvelActivity.w(a)).append("()").toString());
            }
            return;
        } else
        {
            b.loadUrl((new StringBuilder()).append("javascript:AdApp.videoView().setDuration(").append(mediaplayer.getDuration() / 1000).append(")").toString());
            b.loadUrl("javascript:AdApp.videoView().setCanPlay(true)");
            b.loadUrl("javascript:AdApp.adView().play()");
            return;
        }
    }

    ew(ew ew, AdMarvelActivity admarvelactivity, AdMarvelInternalWebView admarvelinternalwebview)
    {
        c = ew;
        a = admarvelactivity;
        b = admarvelinternalwebview;
        super();
    }
}
