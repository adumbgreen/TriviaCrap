// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.os.Handler;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import java.lang.ref.WeakReference;
import java.util.concurrent.atomic.AtomicBoolean;

// Referenced classes of package com.admarvel.android.ads:
//            AdMarvelWebView, AdMarvelInternalWebView, ab, s, 
//            AdMarvelUtils, ac, AdMarvelAd

class g
    implements Runnable
{

    private int a;
    private int b;
    private int c;
    private int d;
    private final WeakReference e;
    private final WeakReference f;
    private final AdMarvelAd g;

    public void run()
    {
        android.widget.Params params1;
        int j;
        AdMarvelWebView admarvelwebview;
        Activity activity;
        ViewGroup viewgroup;
        AdMarvelInternalWebView admarvelinternalwebview;
        FrameLayout framelayout;
        android.widget.Params params;
        RelativeLayout relativelayout;
        int i;
        FrameLayout framelayout1;
        LinearLayout linearlayout;
        android.widget.outParams outparams;
        int k;
        int l;
        float f1;
        try
        {
            admarvelwebview = (AdMarvelWebView)e.get();
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            return;
        }
        if (admarvelwebview == null)
        {
            return;
        }
        activity = (Activity)f.get();
        if (activity == null) goto _L2; else goto _L1
_L1:
        viewgroup = (ViewGroup)activity.getWindow().findViewById(0x1020002);
        admarvelinternalwebview = (AdMarvelInternalWebView)admarvelwebview.findViewWithTag((new StringBuilder()).append(admarvelwebview.e).append("INTERNAL").toString());
        if (admarvelinternalwebview == null) goto _L2; else goto _L3
_L3:
        if (admarvelinternalwebview.isSignalShutdown()) goto _L2; else goto _L4
_L4:
        admarvelinternalwebview.isAdExpanding = true;
        framelayout = new FrameLayout(admarvelwebview.getContext());
        framelayout.setTag((new StringBuilder()).append(admarvelwebview.e).append("EXPAND_BG").toString());
        framelayout.setOnTouchListener(new android.view.View.OnTouchListener() {

            final AdMarvelWebView.o a;

            public boolean onTouch(View view, MotionEvent motionevent)
            {
                return true;
            }

            
            {
                a = AdMarvelWebView.o.this;
                super();
            }
        });
        framelayout.setFocusableInTouchMode(true);
        framelayout.requestFocus();
        framelayout.setOnKeyListener(new android.view.View.OnKeyListener(admarvelwebview) {

            final AdMarvelWebView a;
            final AdMarvelWebView.o b;

            public boolean onKey(View view, int i1, KeyEvent keyevent)
            {
                if (keyevent.getAction() == 0 && i1 == 4)
                {
                    a.d();
                    return true;
                } else
                {
                    return false;
                }
            }

            
            {
                b = AdMarvelWebView.o.this;
                a = admarvelwebview;
                super();
            }
        });
        params = new android.widget.Params(-1, -1);
        relativelayout = new RelativeLayout(admarvelwebview.getContext());
        relativelayout.setTag((new StringBuilder()).append(admarvelwebview.e).append("EXPAND_LAYOUT").toString());
        params1 = new android.widget.Params(a, b);
        if (c != 0) goto _L6; else goto _L5
_L5:
        params1.gravity = 1;
_L12:
        relativelayout.setGravity(1);
        params1.leftMargin = c;
        params1.topMargin = d;
        i = admarvelwebview.getChildCount();
        j = 0;
_L10:
        if (j >= i) goto _L8; else goto _L7
_L7:
        if (admarvelwebview.getChildAt(j) != admarvelinternalwebview) goto _L9; else goto _L8
_L8:
        framelayout1 = new FrameLayout(admarvelwebview.getContext());
        framelayout1.setTag((new StringBuilder()).append(admarvelwebview.e).append("EXPAND_PLACE_HOLDER").toString());
        admarvelwebview.addView(framelayout1, j, new android.widget.outParams(admarvelinternalwebview.getWidth(), admarvelinternalwebview.getHeight()));
        admarvelwebview.removeView(admarvelinternalwebview);
        if (admarvelinternalwebview == null)
        {
            break MISSING_BLOCK_LABEL_403;
        }
        admarvelinternalwebview.a(c, d, a, b);
        relativelayout.addView(admarvelinternalwebview);
        AdMarvelWebView.b(admarvelwebview, true);
        framelayout.addView(relativelayout, params1);
        viewgroup.addView(framelayout, params);
        relativelayout.bringToFront();
        if (AdMarvelWebView.p(admarvelwebview) && !AdMarvelWebView.q(admarvelwebview))
        {
            linearlayout = new LinearLayout(admarvelwebview.getContext());
            linearlayout.setBackgroundColor(0);
            linearlayout.setTag((new StringBuilder()).append(admarvelwebview.e).append("BTN_CLOSE").toString());
            outparams = new android.widget.outParams(ab.a(50F, admarvelwebview.getContext()), ab.a(50F, admarvelwebview.getContext()));
            k = viewgroup.getMeasuredHeight();
            l = viewgroup.getMeasuredWidth();
            f1 = TypedValue.applyDimension(1, 30F, admarvelwebview.getContext().getResources().getDisplayMetrics());
            AdMarvelWebView.a(linearlayout, outparams, AdMarvelWebView.r(admarvelwebview), c, d, a, b, l, k, (int)f1);
            linearlayout.addView(new <init>(admarvelwebview.getContext(), admarvelwebview));
            relativelayout.addView(linearlayout);
            AdMarvelWebView.c(admarvelwebview, true);
            AdMarvelWebView.a(admarvelwebview, new <init>(admarvelwebview, activity, 3));
            if (AdMarvelWebView.s(admarvelwebview).canDetectOrientation())
            {
                AdMarvelWebView.s(admarvelwebview).enable();
            }
        }
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
        admarvelinternalwebview.isAdExpanding = false;
        if (AdMarvelUtils.isLogDumpEnabled())
        {
            (new Handler()).postDelayed(new <init>(g, activity), 1000L);
            return;
        }
        break; /* Loop/switch isn't completed */
_L6:
        if (ac.a() < 11)
        {
            params1.gravity = 48;
        }
        continue; /* Loop/switch isn't completed */
_L9:
        j++;
        if (true) goto _L10; else goto _L2
_L2:
        return;
        if (true) goto _L12; else goto _L11
_L11:
    }

    public _cls2.a(AdMarvelWebView admarvelwebview, Activity activity, int i, int j, int k, int l, AdMarvelAd admarvelad)
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
        g = admarvelad;
    }

    public g(AdMarvelWebView admarvelwebview, Activity activity, int i, int j, AdMarvelAd admarvelad)
    {
        a = 0;
        b = 0;
        c = 0;
        d = 0;
        e = new WeakReference(admarvelwebview);
        f = new WeakReference(activity);
        a = i;
        b = j;
        g = admarvelad;
    }
}
