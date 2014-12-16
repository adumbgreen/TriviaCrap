// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.os.Handler;
import android.os.Message;
import android.widget.RelativeLayout;
import com.admarvel.android.util.Logging;
import java.lang.ref.WeakReference;

// Referenced classes of package com.admarvel.android.ads:
//            AdMarvelActivity, AdMarvelInterstitialAds, i, AdMarvelInternalWebView

class a extends Handler
{

    final AdMarvelActivity a;

    public void handleMessage(Message message)
    {
        if (a.a == null) goto _L2; else goto _L1
_L1:
        a a1 = (a)a.a.get();
_L4:
        if (a1 == null)
        {
            break MISSING_BLOCK_LABEL_36;
        }
        a1.b();
        a(a1);
        RelativeLayout relativelayout;
        if (!AdMarvelActivity.a(a))
        {
            break MISSING_BLOCK_LABEL_208;
        }
        AdMarvelActivity.b(a);
        if (!AdMarvelInterstitialAds.getListener().b())
        {
            a.finish();
        }
        if (a.e == null || a.e.length() <= 0)
        {
            break MISSING_BLOCK_LABEL_189;
        }
        relativelayout = (RelativeLayout)a.findViewById(AdMarvelActivity.b);
        if (relativelayout == null)
        {
            break MISSING_BLOCK_LABEL_189;
        }
        AdMarvelInternalWebView admarvelinternalwebview = (AdMarvelInternalWebView)relativelayout.findViewWithTag((new StringBuilder()).append(AdMarvelActivity.c(a)).append("WEBVIEW").toString());
        if (admarvelinternalwebview == null)
        {
            break MISSING_BLOCK_LABEL_189;
        }
        admarvelinternalwebview.loadUrl((new StringBuilder()).append("javascript:").append(a.e).append("()").toString());
        if (AdMarvelActivity.d(a) > 2)
        {
            a.finish();
            return;
        }
        break MISSING_BLOCK_LABEL_242;
        try
        {
            a.finish();
            return;
        }
        catch (NullPointerException nullpointerexception)
        {
            Logging.log((new StringBuilder()).append("Nullpointer exception occured in close").append(nullpointerexception.getMessage()).toString());
        }
        return;
_L2:
        a1 = null;
        if (true) goto _L4; else goto _L3
_L3:
    }

    View(AdMarvelActivity admarvelactivity)
    {
        a = admarvelactivity;
        super();
    }
}
