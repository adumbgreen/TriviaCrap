// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.os.Handler;
import android.util.TypedValue;
import android.view.OrientationEventListener;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import java.lang.ref.WeakReference;

// Referenced classes of package com.admarvel.android.ads:
//            AdMarvelWebView

class b extends OrientationEventListener
{

    private final WeakReference a;
    private final WeakReference b;
    private int c;

    static int a(b b1, int i)
    {
        b1.c = i;
        return i;
    }

    static WeakReference a(c c1)
    {
        return c1.b;
    }

    public void onOrientationChanged(int i)
    {
        if (c == -1)
        {
            c = i;
        } else
        if (Math.abs(i - c) >= 90 && Math.abs(i - c) <= 270)
        {
            AdMarvelWebView admarvelwebview = (AdMarvelWebView)a.get();
            if (admarvelwebview != null)
            {
                AdMarvelWebView.d(admarvelwebview).postDelayed(new Runnable(admarvelwebview, i) {

                    final AdMarvelWebView a;
                    final int b;
                    final AdMarvelWebView.z c;

                    public void run()
                    {
                        ViewGroup viewgroup;
                        RelativeLayout relativelayout;
                        Activity activity = (Activity)AdMarvelWebView.z.a(c).get();
                        if (activity == null || !AdMarvelWebView.f(a))
                        {
                            break MISSING_BLOCK_LABEL_214;
                        }
                        viewgroup = (ViewGroup)activity.getWindow().findViewById(0x1020002);
                        relativelayout = (RelativeLayout)viewgroup.findViewWithTag((new StringBuilder()).append(a.e).append("EXPAND_LAYOUT").toString());
                        if (relativelayout != null) goto _L2; else goto _L1
_L1:
                        return;
_L2:
                        android.widget.FrameLayout.LayoutParams layoutparams;
                        LinearLayout linearlayout;
                        layoutparams = (android.widget.FrameLayout.LayoutParams)relativelayout.getLayoutParams();
                        linearlayout = (LinearLayout)viewgroup.findViewWithTag((new StringBuilder()).append(a.e).append("BTN_CLOSE").toString());
                        if (linearlayout == null) goto _L1; else goto _L3
_L3:
                        android.widget.RelativeLayout.LayoutParams layoutparams1 = (android.widget.RelativeLayout.LayoutParams)linearlayout.getLayoutParams();
                        int j = viewgroup.getHeight();
                        int k = viewgroup.getWidth();
                        float f = TypedValue.applyDimension(1, 30F, a.getContext().getResources().getDisplayMetrics());
                        AdMarvelWebView.a(linearlayout, layoutparams1, AdMarvelWebView.r(a), layoutparams.leftMargin, layoutparams.topMargin, layoutparams.width, layoutparams.height, k, j, (int)f);
                        AdMarvelWebView.z.a(c, b);
                        return;
                    }

            
            {
                c = AdMarvelWebView.z.this;
                a = admarvelwebview;
                b = i;
                super();
            }
                }, 500L);
                return;
            }
        }
    }

    public _cls1.b(AdMarvelWebView admarvelwebview, Activity activity, int i)
    {
        super(activity, i);
        c = -1;
        a = new WeakReference(admarvelwebview);
        b = new WeakReference(activity);
    }
}
