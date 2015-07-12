// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.mopubads.custom.a;

import android.content.Context;
import android.content.res.Resources;
import android.util.TypedValue;
import android.view.View;
import android.widget.LinearLayout;
import com.mopub.mobileads.MoPubErrorCode;
import com.smartadserver.android.library.SASBannerView;
import com.smartadserver.android.library.ui.e;

public class a
{

    protected int a;
    protected String b;
    protected int c;
    protected Context d;
    protected SASBannerView e;
    protected LinearLayout f;
    protected com.mopub.mobileads.CustomEventBanner.CustomEventBannerListener g;

    public a(Context context, int i, String s, int j)
    {
        d = context;
        a = i;
        b = s;
        c = j;
        a(context);
    }

    protected View a(Context context, int i)
    {
        e e1 = new e(context);
        e1.setBackgroundColor(i);
        return e1;
    }

    public void a()
    {
        com.etermax.a.a.c("mopub ads", "Smartads stopped");
        if (e != null)
        {
            com.etermax.a.a.c("mopub ads", (new StringBuilder()).append("SmartAdsBannerContainer - destroy - adWasOpened = ").append(e.l()).toString());
            if (e.l())
            {
                b();
            }
            e.b();
            e = null;
        }
        g = null;
        f.removeAllViews();
    }

    protected void a(Context context)
    {
        e = new SASBannerView(context);
        f = new LinearLayout(context);
        int i = (int)TypedValue.applyDimension(1, 50F, context.getResources().getDisplayMetrics());
        e.setLayoutParams(new android.view.ViewGroup.LayoutParams(-1, i));
        e.setLoaderView(a(context, 0x66000000));
        f.setLayoutParams(new android.view.ViewGroup.LayoutParams(-1, i));
        f.addView(e);
    }

    public void a(com.mopub.mobileads.CustomEventBanner.CustomEventBannerListener customeventbannerlistener)
    {
        com.etermax.a.a.c("mopub ads", "Smartads started");
        g = customeventbannerlistener;
        e.a(a, b, c, true, "", b(customeventbannerlistener));
    }

    protected com.smartadserver.android.library.ui.a b(com.mopub.mobileads.CustomEventBanner.CustomEventBannerListener customeventbannerlistener)
    {
        return new com.smartadserver.android.library.ui.a(customeventbannerlistener) {

            final com.mopub.mobileads.CustomEventBanner.CustomEventBannerListener a;
            final a b;

            public void adLoadingCompleted(com.smartadserver.android.library.d.a a1)
            {
                com.etermax.a.a.c("mopub ads", "SmartAdsBannerContainer - adLoadingCompleted");
                if (b.e != null)
                {
                    b.e.a(new Runnable(this) {

                        final _cls1 a;

                        public void run()
                        {
                            a.a.onBannerLoaded(a.b.f);
                        }

            
            {
                a = _pcls1;
                super();
            }
                    });
                }
            }

            public void adLoadingFailed(Exception exception)
            {
                com.etermax.a.a.c("mopub ads", "SmartAdsBannerContainer - adLoadingFailed");
                if (b.e != null)
                {
                    b.e.a(new Runnable(this) {

                        final _cls1 a;

                        public void run()
                        {
                            a.a.onBannerFailed(MoPubErrorCode.UNSPECIFIED);
                        }

            
            {
                a = _pcls1;
                super();
            }
                    });
                }
            }

            
            {
                b = a.this;
                a = customeventbannerlistener;
                super();
            }
        };
    }

    protected void b()
    {
        if (g != null)
        {
            g.onBannerClicked();
        }
    }
}
