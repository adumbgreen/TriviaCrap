// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.content.Context;
import android.content.res.Resources;
import android.os.Handler;
import android.util.TypedValue;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;

// Referenced classes of package com.admarvel.android.ads:
//            ac, AdMarvelActivity, w, AdMarvelInternalWebView

public class f extends RelativeLayout
{

    TextView a;
    ProgressBar b;
    final AdMarvelActivity c;
    private final Context d;
    private boolean e;
    private boolean f;
    private boolean g;
    private int h;

    private int a(float f1)
    {
        return (int)TypedValue.applyDimension(1, f1, getResources().getDisplayMetrics());
    }

    static void a(ics ics)
    {
        ics.d();
    }

    private void d()
    {
        RelativeLayout relativelayout;
        w w1;
        AdMarvelInternalWebView admarvelinternalwebview;
label0:
        {
            AdMarvelActivity admarvelactivity = c;
            AdMarvelActivity.a(admarvelactivity, false);
            relativelayout = (RelativeLayout)admarvelactivity.findViewById(AdMarvelActivity.b);
            if (relativelayout != null)
            {
                w1 = (w)relativelayout.findViewWithTag((new StringBuilder()).append(AdMarvelActivity.c(admarvelactivity)).append("CONTROLS").toString());
                admarvelinternalwebview = (AdMarvelInternalWebView)relativelayout.findViewWithTag((new StringBuilder()).append(AdMarvelActivity.c(admarvelactivity)).append("WEBVIEW").toString());
                if (e)
                {
                    break label0;
                }
                if (w1 != null && admarvelinternalwebview != null)
                {
                    admarvelinternalwebview.clearHistory();
                    admarvelinternalwebview.setVisibility(0);
                    w1.setVisibility(0);
                    relativelayout.requestLayout();
                }
            }
            return;
        }
        if (admarvelinternalwebview != null)
        {
            admarvelinternalwebview.stopLoading();
            admarvelinternalwebview.d();
            admarvelinternalwebview.setVisibility(8);
        }
        if (w1 != null)
        {
            w1.setVisibility(8);
        }
        relativelayout.requestLayout();
    }

    public boolean a()
    {
        return g;
    }

    public void b()
    {
        e = true;
    }

    public void c()
    {
        setShowing(false);
        b.setVisibility(8);
        setVisibility(8);
    }

    public int getProgress()
    {
        return h;
    }

    public void setCancelable(boolean flag)
    {
        f = flag;
    }

    public void setProgress(int i)
    {
        h = i;
        b.setProgress(i);
        if (i >= 100)
        {
            c();
        }
        a.setText((new StringBuilder()).append("Loading...").append(i).append("% ").toString());
        a.invalidate();
    }

    public void setShowing(boolean flag)
    {
        g = flag;
    }

    public View(AdMarvelActivity admarvelactivity, Context context)
    {
        c = admarvelactivity;
        super(context);
        e = false;
        f = true;
        g = true;
        h = 0;
        d = context;
        android.widget.utParams utparams = new android.widget.utParams(-1, -1);
        utparams.addRule(13);
        setLayoutParams(utparams);
        setBackgroundColor(getResources().getColor(0x106000d));
        new android.widget.utParams(-1, a(100F));
        a = new TextView(context);
        android.widget.utParams utparams1 = new android.widget.utParams(-2, -2);
        a.setLayoutParams(utparams1);
        android.widget.utParams utparams2;
        if (ac.a() < 9)
        {
            b = new ProgressBar(d, null, 0x1010078);
            utparams2 = new android.widget.utParams(-2, -2);
        } else
        {
            b = new ProgressBar(d, null, 0x1010289);
            utparams2 = new android.widget.utParams(a(50F), a(50F));
        }
        b.setId(0xb4be5ec);
        b.setVisibility(0);
        utparams2.addRule(13);
        addView(b, utparams2);
        utparams1.addRule(3, b.getId());
        utparams1.addRule(14);
        utparams1.addRule(13);
        addView(a);
        a.setText((new StringBuilder()).append("Loading...").append(h).append("% ").toString());
        if (AdMarvelActivity.a(admarvelactivity))
        {
            f = false;
            AdMarvelActivity.a(admarvelactivity, true);
            AdMarvelActivity.f(admarvelactivity).postDelayed(AdMarvelActivity.E(admarvelactivity), 5000L);
        }
    }
}
