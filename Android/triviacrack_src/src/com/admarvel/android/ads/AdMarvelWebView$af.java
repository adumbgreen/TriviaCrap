// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.util.Log;
import com.admarvel.android.util.Logging;
import java.lang.ref.WeakReference;

// Referenced classes of package com.admarvel.android.ads:
//            AdMarvelWebView, AdMarvelInternalWebView, f

class c
    implements Runnable
{

    private final WeakReference a;
    private final WeakReference b;
    private float c;

    public void run()
    {
        AdMarvelWebView admarvelwebview;
        AdMarvelInternalWebView admarvelinternalwebview;
        admarvelwebview = (AdMarvelWebView)a.get();
        admarvelinternalwebview = (AdMarvelInternalWebView)b.get();
        if (admarvelwebview == null)
        {
            break MISSING_BLOCK_LABEL_89;
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
                f1.seekTo((int)(1000F * c));
                return;
            }
            catch (Exception exception)
            {
                Logging.log(Log.getStackTraceString(exception));
            }
        }
    }

    public View(AdMarvelWebView admarvelwebview, AdMarvelInternalWebView admarvelinternalwebview, float f1)
    {
        a = new WeakReference(admarvelwebview);
        b = new WeakReference(admarvelinternalwebview);
        c = f1;
    }
}
