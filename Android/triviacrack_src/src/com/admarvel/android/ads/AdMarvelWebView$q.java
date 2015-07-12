// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.util.Log;
import com.admarvel.android.util.Logging;
import java.lang.ref.WeakReference;

// Referenced classes of package com.admarvel.android.ads:
//            AdMarvelWebView, f

class a
    implements Runnable
{

    private final WeakReference a;

    public void run()
    {
        AdMarvelWebView admarvelwebview = (AdMarvelWebView)a.get();
        if (admarvelwebview == null)
        {
            return;
        }
        f f1 = (f)admarvelwebview.findViewWithTag((new StringBuilder()).append(admarvelwebview.e).append("EMBEDDED_VIDEO").toString());
        if (f1 != null)
        {
            try
            {
                f1.c();
                return;
            }
            catch (Exception exception)
            {
                Logging.log(Log.getStackTraceString(exception));
            }
        }
        return;
    }

    public (AdMarvelWebView admarvelwebview)
    {
        a = new WeakReference(admarvelwebview);
    }
}
