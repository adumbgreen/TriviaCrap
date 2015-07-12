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
        AdMarvelWebView admarvelwebview;
        AdMarvelInternalWebView admarvelinternalwebview;
        admarvelwebview = (AdMarvelWebView)a.get();
        admarvelinternalwebview = (AdMarvelInternalWebView)b.get();
        if (admarvelwebview == null)
        {
            break MISSING_BLOCK_LABEL_132;
        }
        if (admarvelinternalwebview == null)
        {
            return;
        }
        f f1 = (f)admarvelwebview.findViewWithTag((new StringBuilder()).append(admarvelwebview.e).append("EMBEDDED_VIDEO").toString());
        if (f1 != null)
        {
            try
            {
                if (!f1.isPlaying())
                {
                    f1.g();
                    if (AdMarvelWebView.L(admarvelwebview) != null && AdMarvelWebView.L(admarvelwebview).length() > 0)
                    {
                        admarvelinternalwebview.injectJavaScript((new StringBuilder()).append(AdMarvelWebView.L(admarvelwebview)).append("()").toString());
                        return;
                    }
                }
            }
            catch (Exception exception)
            {
                Logging.log(Log.getStackTraceString(exception));
            }
        }
    }

    public View(AdMarvelWebView admarvelwebview, AdMarvelInternalWebView admarvelinternalwebview)
    {
        a = new WeakReference(admarvelwebview);
        b = new WeakReference(admarvelinternalwebview);
    }
}
