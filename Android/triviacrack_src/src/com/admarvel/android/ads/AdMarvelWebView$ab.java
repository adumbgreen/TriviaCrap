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
            break MISSING_BLOCK_LABEL_159;
        }
        if (admarvelinternalwebview == null)
        {
            return;
        }
        f1 = (f)admarvelwebview.findViewWithTag((new StringBuilder()).append(admarvelwebview.e).append("EMBEDDED_VIDEO").toString());
        if (f1 == null)
        {
            break MISSING_BLOCK_LABEL_159;
        }
        if (f1.getHeight() != 0)
        {
            break MISSING_BLOCK_LABEL_151;
        }
        AdMarvelWebView.d(admarvelwebview).postDelayed(new Runnable(f1, admarvelwebview, admarvelinternalwebview) {

            final f a;
            final AdMarvelWebView b;
            final AdMarvelInternalWebView c;
            final AdMarvelWebView.ab d;

            public void run()
            {
                if (a.getHeight() == 0 && AdMarvelWebView.D(b) != null && AdMarvelWebView.D(b).length() > 0)
                {
                    c.injectJavaScript((new StringBuilder()).append(AdMarvelWebView.D(b)).append("()").toString());
                    return;
                } else
                {
                    a.f();
                    return;
                }
            }

            
            {
                d = AdMarvelWebView.ab.this;
                a = f1;
                b = admarvelwebview;
                c = admarvelinternalwebview;
                super();
            }
        }, 500L);
_L1:
        if (AdMarvelWebView.J(admarvelwebview) != null && AdMarvelWebView.J(admarvelwebview).length() > 0)
        {
            admarvelinternalwebview.injectJavaScript((new StringBuilder()).append(AdMarvelWebView.J(admarvelwebview)).append("()").toString());
            return;
        }
        break MISSING_BLOCK_LABEL_159;
        f1.f();
          goto _L1
    }

    public View(AdMarvelWebView admarvelwebview, AdMarvelInternalWebView admarvelinternalwebview)
    {
        a = new WeakReference(admarvelwebview);
        b = new WeakReference(admarvelinternalwebview);
    }
}
