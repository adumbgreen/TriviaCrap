// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.os.Handler;
import android.util.Log;
import com.admarvel.android.util.Logging;
import java.lang.ref.WeakReference;

// Referenced classes of package com.admarvel.android.ads:
//            AdMarvelWebView, f, ab, AdMarvelInternalWebView

class a
    implements Runnable
{

    private final WeakReference a;

    public void run()
    {
        AdMarvelWebView admarvelwebview;
        f f1;
        AdMarvelInternalWebView admarvelinternalwebview;
        android.widget.tParams tparams;
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
            break MISSING_BLOCK_LABEL_68;
        }
        f1.c();
        f1.b();
        admarvelwebview.removeView(f1);
        f1.a = null;
        if (AdMarvelWebView.H(admarvelwebview) != null)
        {
            AdMarvelWebView.d(admarvelwebview).removeCallbacks(AdMarvelWebView.H(admarvelwebview));
            AdMarvelWebView.a(admarvelwebview, null);
        }
        ab.m(admarvelwebview.getContext());
        admarvelinternalwebview = (AdMarvelInternalWebView)admarvelwebview.findViewWithTag((new StringBuilder()).append(admarvelwebview.e).append("INTERNAL").toString());
        if (admarvelinternalwebview == null)
        {
            break MISSING_BLOCK_LABEL_156;
        }
        admarvelinternalwebview.g();
        admarvelinternalwebview.visibilityCallback = null;
        admarvelinternalwebview.invalidate();
        admarvelinternalwebview.requestLayout();
        tparams = (android.widget.tParams)admarvelwebview.getLayoutParams();
        tparams.height = -2;
        admarvelwebview.setLayoutParams(tparams);
        admarvelwebview.forceLayout();
        admarvelwebview.requestLayout();
        admarvelwebview.invalidate();
        admarvelwebview.requestFocus();
        a.clear();
        return;
    }

    public bView(AdMarvelWebView admarvelwebview)
    {
        a = new WeakReference(admarvelwebview);
    }
}
