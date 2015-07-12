// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.util.TypedValue;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import java.lang.ref.WeakReference;
import java.util.concurrent.atomic.AtomicBoolean;

// Referenced classes of package com.admarvel.android.ads:
//            AdMarvelWebView, AdMarvelInternalWebView, s

class d
    implements Runnable
{

    private int a;
    private int b;
    private int c;
    private int d;
    private final WeakReference e;
    private final WeakReference f;

    public void run()
    {
        AdMarvelWebView admarvelwebview = (AdMarvelWebView)e.get();
        if (admarvelwebview != null) goto _L2; else goto _L1
_L1:
        Activity activity;
        return;
_L2:
        ViewGroup viewgroup;
        if ((activity = (Activity)f.get()) == null)
        {
            continue; /* Loop/switch isn't completed */
        }
        viewgroup = (ViewGroup)activity.getWindow().findViewById(0x1020002);
        AdMarvelInternalWebView admarvelinternalwebview = (AdMarvelInternalWebView)viewgroup.findViewWithTag((new StringBuilder()).append(admarvelwebview.e).append("INTERNAL").toString());
        if (admarvelinternalwebview == null || admarvelinternalwebview.isSignalShutdown() || !AdMarvelWebView.f(admarvelwebview))
        {
            continue; /* Loop/switch isn't completed */
        }
        RelativeLayout relativelayout = (RelativeLayout)viewgroup.findViewWithTag((new StringBuilder()).append(admarvelwebview.e).append("EXPAND_LAYOUT").toString());
        if (relativelayout == null)
        {
            continue; /* Loop/switch isn't completed */
        }
        FrameLayout framelayout = (FrameLayout)viewgroup.findViewWithTag((new StringBuilder()).append(admarvelwebview.e).append("EXPAND_BG").toString());
        if (framelayout == null)
        {
            continue; /* Loop/switch isn't completed */
        }
        framelayout.setFocusableInTouchMode(true);
        framelayout.requestFocus();
        android.widget.Params params = (android.widget.Params)relativelayout.getLayoutParams();
        if (params != null)
        {
            params.width = a;
            params.height = b;
            params.leftMargin = c;
            params.topMargin = d;
            if (c != 0)
            {
                params.gravity = 0;
            }
        }
        admarvelinternalwebview.a(c, d, a, b);
        if (!AdMarvelWebView.t(admarvelwebview))
        {
            break; /* Loop/switch isn't completed */
        }
        LinearLayout linearlayout = (LinearLayout)viewgroup.findViewWithTag((new StringBuilder()).append(admarvelwebview.e).append("BTN_CLOSE").toString());
        if (linearlayout == null)
        {
            continue; /* Loop/switch isn't completed */
        }
        android.widget.outParams outparams = new android.widget.outParams(-2, -2);
        int i = viewgroup.getMeasuredHeight();
        int j = viewgroup.getMeasuredWidth();
        float f1 = TypedValue.applyDimension(1, 30F, admarvelwebview.getContext().getResources().getDisplayMetrics());
        AdMarvelWebView.a(linearlayout, outparams, AdMarvelWebView.r(admarvelwebview), c, d, a, b, j, i, (int)f1);
        linearlayout.removeAllViews();
        linearlayout.addView(new <init>(admarvelwebview.getContext(), admarvelwebview));
        break; /* Loop/switch isn't completed */
        if (true) goto _L1; else goto _L3
_L3:
        AdMarvelWebView.d(admarvelwebview, true);
        viewgroup.invalidate();
        viewgroup.requestLayout();
        admarvelwebview.a.set(true);
        admarvelwebview.invalidate();
        admarvelwebview.requestLayout();
        if (AdMarvelWebView.a(admarvelwebview.e) != null)
        {
            AdMarvelWebView.a(admarvelwebview.e).a();
        }
        admarvelwebview.invalidate();
        admarvelwebview.requestLayout();
        return;
    }

    public bView(AdMarvelWebView admarvelwebview, Activity activity, int i, int j)
    {
        a = 0;
        b = 0;
        c = 0;
        d = 0;
        e = new WeakReference(admarvelwebview);
        f = new WeakReference(activity);
        a = i;
        b = j;
    }

    public b(AdMarvelWebView admarvelwebview, Activity activity, int i, int j, int k, int l)
    {
        a = 0;
        b = 0;
        c = 0;
        d = 0;
        e = new WeakReference(admarvelwebview);
        f = new WeakReference(activity);
        a = k;
        b = l;
        c = i;
        d = j;
    }
}
