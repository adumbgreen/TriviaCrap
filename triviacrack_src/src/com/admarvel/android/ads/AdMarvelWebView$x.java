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
    private String c;

    public void run()
    {
        AdMarvelWebView admarvelwebview;
        AdMarvelInternalWebView admarvelinternalwebview;
        admarvelwebview = (AdMarvelWebView)a.get();
        admarvelinternalwebview = (AdMarvelInternalWebView)b.get();
        if (admarvelwebview == null || admarvelinternalwebview == null)
        {
            break MISSING_BLOCK_LABEL_102;
        }
        if (c == null)
        {
            break MISSING_BLOCK_LABEL_102;
        }
        if (c.length() <= 0)
        {
            return;
        }
        f f1 = (f)admarvelwebview.findViewWithTag((new StringBuilder()).append(admarvelwebview.e).append("EMBEDDED_VIDEO").toString());
        if (f1 != null)
        {
            try
            {
                f1.e(c);
                return;
            }
            catch (Exception exception)
            {
                Logging.log(Log.getStackTraceString(exception));
            }
        }
    }

    public bView(String s, AdMarvelWebView admarvelwebview, AdMarvelInternalWebView admarvelinternalwebview)
    {
        c = s;
        a = new WeakReference(admarvelwebview);
        b = new WeakReference(admarvelinternalwebview);
    }
}
