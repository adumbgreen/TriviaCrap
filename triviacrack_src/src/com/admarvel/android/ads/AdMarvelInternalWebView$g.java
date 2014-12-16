// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.content.Context;
import com.admarvel.android.util.Logging;
import java.lang.ref.WeakReference;
import java.util.concurrent.atomic.AtomicBoolean;

// Referenced classes of package com.admarvel.android.ads:
//            AdMarvelInternalWebView, AdMarvelActivity

class b
    implements Runnable
{

    private final WeakReference a;
    private final WeakReference b;

    public void run()
    {
        AdMarvelActivity admarvelactivity;
        if (AdMarvelInternalWebView.l())
        {
            break MISSING_BLOCK_LABEL_147;
        }
        Context context;
        if (a != null)
        {
            context = (Context)a.get();
        } else
        {
            context = null;
        }
        if (context == null || !(context instanceof AdMarvelActivity)) goto _L2; else goto _L1
_L1:
        admarvelactivity = (AdMarvelActivity)context;
        AdMarvelInternalWebView admarvelinternalwebview;
        if (b.get() != null)
        {
            admarvelinternalwebview = (AdMarvelInternalWebView)b.get();
        } else
        {
            admarvelinternalwebview = null;
        }
        if (admarvelinternalwebview == null || !AdMarvelInternalWebView.f(admarvelinternalwebview).get()) goto _L4; else goto _L3
_L3:
        b b1;
        if (admarvelactivity.a != null)
        {
            b1 = (b)admarvelactivity.a.get();
        } else
        {
            b1 = null;
        }
        if (b1 != null && b1.b())
        {
            Logging.log("closing In-app as dialog is visible and onpagefinished is not called");
            admarvelactivity.g();
        }
_L2:
        return;
_L4:
        if (admarvelactivity == null) goto _L2; else goto _L5
_L5:
        Logging.log("closing Interstitial as onpagefinished is not called");
        admarvelactivity.g();
        return;
        Logging.log("not closing Interstitial as pagFinished is called");
        return;
    }

    public (AdMarvelInternalWebView admarvelinternalwebview, Context context)
    {
        a = new WeakReference(context);
        b = new WeakReference(admarvelinternalwebview);
    }
}
