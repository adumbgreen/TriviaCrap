// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.content.Context;
import android.os.Handler;
import android.os.SystemClock;
import java.lang.ref.WeakReference;

// Referenced classes of package com.admarvel.android.ads:
//            AdMarvelWebView, AdMarvelInternalWebView, ab

class c
    implements Runnable
{

    public final Handler a = new Handler();
    private WeakReference b;
    private WeakReference c;
    private long d;

    public void run()
    {
        AdMarvelWebView admarvelwebview = (AdMarvelWebView)c.get();
        AdMarvelInternalWebView admarvelinternalwebview;
        for (admarvelinternalwebview = (AdMarvelInternalWebView)b.get(); admarvelinternalwebview == null || admarvelwebview == null || AdMarvelInternalWebView.a(admarvelinternalwebview);)
        {
            return;
        }

        int ai[] = {
            -1, -1
        };
        admarvelinternalwebview.getLocationInWindow(ai);
        int i;
        int j;
        int k;
        boolean flag;
        if (admarvelinternalwebview.getHeight() > 0)
        {
            i = admarvelinternalwebview.getHeight() / 2;
        } else
        {
            i = 0;
        }
        if (admarvelinternalwebview.getHeight() > 0)
        {
            j = 2 * (admarvelinternalwebview.getHeight() / 3);
        } else
        {
            j = 0;
        }
        if (admarvelwebview.f != 0x80000000 && admarvelwebview.f > 0)
        {
            k = admarvelwebview.f;
        } else
        {
            k = 0;
        }
        if (i + (ai[1] - k) >= 0 && j + ai[1] < ab.h(admarvelwebview.getContext()))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (!flag || admarvelinternalwebview.isLastStateVisible) goto _L2; else goto _L1
_L1:
        admarvelinternalwebview.injectJavaScript((new StringBuilder()).append(admarvelinternalwebview.visibilityCallback).append("(").append(true).append(")").toString());
        admarvelinternalwebview.isLastStateVisible = true;
_L4:
        a.removeCallbacks(this);
        a.postAtTime(this, SystemClock.uptimeMillis() + d);
        return;
_L2:
        if (!flag && admarvelinternalwebview.isLastStateVisible)
        {
            admarvelinternalwebview.injectJavaScript((new StringBuilder()).append(admarvelinternalwebview.visibilityCallback).append("(").append(false).append(")").toString());
            admarvelinternalwebview.isLastStateVisible = false;
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public (AdMarvelInternalWebView admarvelinternalwebview, Context context, AdMarvelWebView admarvelwebview)
    {
        d = 500L;
        b = new WeakReference(admarvelinternalwebview);
        c = new WeakReference(admarvelwebview);
    }
}
