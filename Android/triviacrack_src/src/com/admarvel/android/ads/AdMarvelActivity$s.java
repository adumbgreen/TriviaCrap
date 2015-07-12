// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.os.Handler;
import android.util.Log;
import android.widget.RelativeLayout;
import com.admarvel.android.util.Logging;
import java.lang.ref.WeakReference;

// Referenced classes of package com.admarvel.android.ads:
//            AdMarvelActivity, AdMarvelInternalWebView, p

class b
    implements Runnable
{

    private final WeakReference a;
    private final WeakReference b;

    public void run()
    {
        p p1;
        AdMarvelActivity admarvelactivity;
        AdMarvelInternalWebView admarvelinternalwebview;
        try
        {
            admarvelactivity = (AdMarvelActivity)a.get();
            admarvelinternalwebview = (AdMarvelInternalWebView)b.get();
        }
        catch (Exception exception)
        {
            Logging.log(Log.getStackTraceString(exception));
            return;
        }
        if (admarvelactivity == null)
        {
            break MISSING_BLOCK_LABEL_216;
        }
        if (admarvelinternalwebview == null)
        {
            return;
        }
        p1 = (p)((RelativeLayout)admarvelactivity.findViewById(AdMarvelActivity.b)).findViewWithTag((new StringBuilder()).append(AdMarvelActivity.c(admarvelactivity)).append("BR_VIDEO").toString());
        if (p1 == null)
        {
            break MISSING_BLOCK_LABEL_216;
        }
        if (p1.getHeight() != 0)
        {
            break MISSING_BLOCK_LABEL_208;
        }
        AdMarvelActivity.f(admarvelactivity).postDelayed(new Runnable(p1, admarvelinternalwebview, admarvelactivity) {

            final p a;
            final AdMarvelInternalWebView b;
            final AdMarvelActivity c;
            final AdMarvelActivity.s d;

            public void run()
            {
                if (a.getHeight() == 0)
                {
                    b.loadUrl((new StringBuilder()).append("javascript:").append(AdMarvelActivity.y(c)).append("()").toString());
                    return;
                } else
                {
                    a.start();
                    return;
                }
            }

            
            {
                d = AdMarvelActivity.s.this;
                a = p1;
                b = admarvelinternalwebview;
                c = admarvelactivity;
                super();
            }
        }, 500L);
_L1:
        if (AdMarvelActivity.z(admarvelactivity) == null)
        {
            AdMarvelActivity.a(admarvelactivity, new (admarvelactivity, admarvelinternalwebview));
            AdMarvelActivity.f(admarvelactivity).postDelayed(AdMarvelActivity.z(admarvelactivity), 1000L);
        }
        if (admarvelactivity.d && AdMarvelActivity.A(admarvelactivity) != null && AdMarvelActivity.A(admarvelactivity).length() > 0)
        {
            admarvelinternalwebview.loadUrl((new StringBuilder()).append("javascript:").append(AdMarvelActivity.A(admarvelactivity)).append("()").toString());
            return;
        }
        break MISSING_BLOCK_LABEL_216;
        p1.start();
          goto _L1
    }

    public View(AdMarvelActivity admarvelactivity, AdMarvelInternalWebView admarvelinternalwebview)
    {
        a = new WeakReference(admarvelactivity);
        b = new WeakReference(admarvelinternalwebview);
    }
}
