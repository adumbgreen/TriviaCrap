// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.util.Log;
import com.admarvel.android.util.Logging;
import java.lang.ref.WeakReference;

// Referenced classes of package com.admarvel.android.ads:
//            AdMarvelWebView, AdMarvelInternalWebView, f

class f
    implements Runnable
{

    private final WeakReference a;
    private final WeakReference b;
    private int c;
    private int d;
    private int e;
    private int f;

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
        if (admarvelwebview == null) goto _L4; else goto _L3
_L3:
        f f1 = (f)admarvelwebview.findViewWithTag((new StringBuilder()).append(admarvelwebview.e).append("EMBEDDED_VIDEO").toString());
_L5:
        if (f1 != null)
        {
            try
            {
                f1.a(e, f, c, d);
                f1.i();
                return;
            }
            catch (Exception exception)
            {
                Logging.log(Log.getStackTraceString(exception));
            }
            return;
        }
        break; /* Loop/switch isn't completed */
_L4:
        f1 = null;
        if (true) goto _L5; else goto _L2
_L2:
    }

    public View(AdMarvelWebView admarvelwebview, AdMarvelInternalWebView admarvelinternalwebview, int i, int j, int k, int l)
    {
        a = new WeakReference(admarvelwebview);
        b = new WeakReference(admarvelinternalwebview);
        c = i;
        d = j;
        e = k;
        f = l;
    }
}
