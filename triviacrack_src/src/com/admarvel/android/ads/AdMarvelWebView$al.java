// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.os.Handler;
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
        AdMarvelWebView admarvelwebview;
        AdMarvelInternalWebView admarvelinternalwebview;
        admarvelwebview = (AdMarvelWebView)a.get();
        admarvelinternalwebview = (AdMarvelInternalWebView)b.get();
        if (admarvelwebview == null) goto _L2; else goto _L1
_L1:
        if (admarvelinternalwebview == null)
        {
            return;
        }
        f f1 = (f)admarvelwebview.findViewWithTag((new StringBuilder()).append(admarvelwebview.e).append("EMBEDDED_VIDEO").toString());
        if (admarvelinternalwebview == null || f1 == null)
        {
            break MISSING_BLOCK_LABEL_131;
        }
        if (AdMarvelWebView.N(admarvelwebview) != null && AdMarvelWebView.N(admarvelwebview).length() > 0)
        {
            admarvelinternalwebview.injectJavaScript((new StringBuilder()).append(AdMarvelWebView.N(admarvelwebview)).append("(").append((float)f1.h() / 1000F).append(")").toString());
        }
_L3:
        try
        {
            AdMarvelWebView.d(admarvelwebview).postDelayed(AdMarvelWebView.H(admarvelwebview), 500L);
            return;
        }
        catch (Exception exception)
        {
            Logging.log(Log.getStackTraceString(exception));
        }
        return;
        Exception exception1;
        exception1;
        exception1.printStackTrace();
        if (true) goto _L3; else goto _L2
_L2:
    }

    public View(AdMarvelWebView admarvelwebview, AdMarvelInternalWebView admarvelinternalwebview)
    {
        a = new WeakReference(admarvelwebview);
        b = new WeakReference(admarvelinternalwebview);
    }
}
