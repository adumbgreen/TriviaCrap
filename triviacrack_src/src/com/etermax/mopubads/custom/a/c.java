// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.mopubads.custom.a;

import android.content.Context;
import android.os.Handler;
import android.view.View;
import com.etermax.a.a;
import com.etermax.adsinterface.f;
import com.smartadserver.android.library.SASInterstitialView;
import com.smartadserver.android.library.ui.d;
import com.smartadserver.android.library.ui.e;

public class c
{

    protected int a;
    protected String b;
    protected int c;
    protected Context d;
    protected SASInterstitialView e;
    protected com.mopub.mobileads.CustomEventInterstitial.CustomEventInterstitialListener f;
    private Handler g;

    public c(Context context, int i, String s, int j)
    {
        g = new Handler();
        d = context;
        a = i;
        b = s;
        c = j;
        a(context);
    }

    static Handler a(c c1)
    {
        return c1.g;
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
            com.etermax.a.a.c("mopub ads", (new StringBuilder()).append("SmartAdsInterstitialContainer - destroy - adWasOpened = ").append(e.l()).toString());
            if (e.l())
            {
                b();
            }
            e.b();
            e = null;
        }
        f = null;
    }

    protected void a(Context context)
    {
        e = new SASInterstitialView(context);
        e.setLoaderView(a(context, -1));
        SASInterstitialView.setDefaultAdLoadingTimeout(12000);
    }

    public void a(com.mopub.mobileads.CustomEventInterstitial.CustomEventInterstitialListener customeventinterstitiallistener)
    {
        com.etermax.a.a.c("mopub ads", "Smartads started");
        f = customeventinterstitiallistener;
        e.a(a, b, c, true, "", b(customeventinterstitiallistener));
    }

    protected com.smartadserver.android.library.ui.a b(com.mopub.mobileads.CustomEventInterstitial.CustomEventInterstitialListener customeventinterstitiallistener)
    {
        e.a(new com.smartadserver.android.library.ui.c(customeventinterstitiallistener) {

            final com.mopub.mobileads.CustomEventInterstitial.CustomEventInterstitialListener a;
            final c b;

            public void onStateChanged(d d1)
            {
                b.e.a(new Runnable(this, d1) {

                    final d a;
                    final _cls1 b;

                    public void run()
                    {
                        switch (a.a())
                        {
                        default:
                            return;

                        case 1: // '\001'
                            com.etermax.a.a.a("mopub ads", "SmartAdsInterstitialContainer - Interstitial view default.");
                            return;

                        case 0: // '\0'
                            com.etermax.a.a.a("mopub ads", "SmartAdsInterstitialContainer - Interstitial view expanded.");
                            b.a.onInterstitialShown();
                            return;

                        case 2: // '\002'
                            com.etermax.a.a.a("mopub ads", "SmartAdsInterstitialContainer - Interstitial view hidden.");
                            break;
                        }
                        b.a.onInterstitialDismissed();
                    }

            
            {
                b = _pcls1;
                a = d1;
                super();
            }
                });
            }

            
            {
                b = c.this;
                a = customeventinterstitiallistener;
                super();
            }
        });
        return new com.smartadserver.android.library.ui.a() {

            final c a;

            public void adLoadingCompleted(com.smartadserver.android.library.d.a a1)
            {
                com.etermax.a.a.c("mopub ads", "SmartAdsInterstitialContainer - adLoadingCompleted");
                try
                {
                    com.etermax.mopubads.custom.a.c.a(a).post(new Runnable(this) {

                        final _cls2 a;

                        public void run()
                        {
                            com.etermax.adsinterface.f.a();
                        }

            
            {
                a = _pcls2;
                super();
            }
                    });
                    return;
                }
                catch (Exception exception)
                {
                    com.etermax.a.a.a("mopub ads", "Error calling ShowInterstitialListener onSuccess()", exception);
                }
            }

            public void adLoadingFailed(Exception exception)
            {
                com.etermax.a.a.c("mopub ads", "SmartAdsInterstitialContainer - adLoadingFailed");
                try
                {
                    com.etermax.mopubads.custom.a.c.a(a).post(new Runnable(this) {

                        final _cls2 a;

                        public void run()
                        {
                            com.etermax.adsinterface.f.b();
                        }

            
            {
                a = _pcls2;
                super();
            }
                    });
                    return;
                }
                catch (Exception exception1)
                {
                    com.etermax.a.a.a("mopub ads", "Error calling ShowInterstitialListener onFailed()", exception1);
                }
            }

            
            {
                a = c.this;
                super();
            }
        };
    }

    protected void b()
    {
        if (f != null)
        {
            f.onInterstitialClicked();
        }
    }
}
