// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.util.Log;
import com.admarvel.android.util.Logging;
import java.lang.ref.WeakReference;

// Referenced classes of package com.admarvel.android.ads:
//            AdMarvelWebView, f

class b
    implements Runnable
{

    private final WeakReference a;
    private String b;

    public void run()
    {
        f f1;
        AdMarvelWebView admarvelwebview;
        try
        {
            admarvelwebview = (AdMarvelWebView)a.get();
        }
        catch (Exception exception)
        {
            Logging.log(Log.getStackTraceString(exception));
            return;
        }
        if (admarvelwebview == null)
        {
            return;
        }
        f1 = (f)admarvelwebview.findViewWithTag((new StringBuilder()).append(admarvelwebview.e).append("EMBEDDED_VIDEO").toString());
        if (f1 == null)
        {
            break MISSING_BLOCK_LABEL_112;
        }
        if (b == null || b.trim().length() <= 0)
        {
            break MISSING_BLOCK_LABEL_112;
        }
        if (b.equalsIgnoreCase("mute"))
        {
            f1.d();
            return;
        }
        if (b.equalsIgnoreCase("unmute"))
        {
            f1.e();
        }
    }

    public (AdMarvelWebView admarvelwebview, String s)
    {
        a = new WeakReference(admarvelwebview);
        b = s;
    }
}
