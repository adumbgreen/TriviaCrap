// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.util.Log;
import com.admarvel.android.util.Logging;
import java.lang.ref.WeakReference;

// Referenced classes of package com.admarvel.android.ads:
//            AdMarvelWebView, AdMarvelInternalWebView, f

class b
    implements Runnable
{

    private final WeakReference a;
    private final WeakReference b;

    public void run()
    {
        f f1;
        AdMarvelWebView admarvelwebview;
        AdMarvelInternalWebView admarvelinternalwebview;
        try
        {
            admarvelwebview = (AdMarvelWebView)a.get();
            admarvelinternalwebview = (AdMarvelInternalWebView)b.get();
        }
        catch (Exception exception)
        {
            Logging.log(Log.getStackTraceString(exception));
            return;
        }
        if (admarvelwebview == null)
        {
            break MISSING_BLOCK_LABEL_141;
        }
        if (admarvelinternalwebview == null)
        {
            return;
        }
        f1 = (f)admarvelwebview.findViewWithTag((new StringBuilder()).append(admarvelwebview.e).append("EMBEDDED_VIDEO").toString());
        if (f1 == null)
        {
            break MISSING_BLOCK_LABEL_141;
        }
        if (!f1.isPlaying())
        {
            break MISSING_BLOCK_LABEL_133;
        }
        f1.pause();
_L1:
        if (AdMarvelWebView.K(admarvelwebview) != null && AdMarvelWebView.K(admarvelwebview).length() > 0)
        {
            admarvelinternalwebview.injectJavaScript((new StringBuilder()).append(AdMarvelWebView.K(admarvelwebview)).append("()").toString());
            return;
        }
        break MISSING_BLOCK_LABEL_141;
        f1.c();
          goto _L1
    }

    public View(AdMarvelWebView admarvelwebview, AdMarvelInternalWebView admarvelinternalwebview)
    {
        a = new WeakReference(admarvelwebview);
        b = new WeakReference(admarvelinternalwebview);
    }
}
