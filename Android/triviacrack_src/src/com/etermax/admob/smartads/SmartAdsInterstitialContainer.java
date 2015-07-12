// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.admob.smartads;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import com.etermax.adsinterface.f;
import com.google.ads.mediation.customevent.CustomEventInterstitialListener;
import com.google.ads.mediation.customevent.CustomEventListener;
import com.smartadserver.android.library.SASInterstitialView;
import com.smartadserver.android.library.ui.a;
import com.smartadserver.android.library.ui.c;
import com.smartadserver.android.library.ui.d;

// Referenced classes of package com.etermax.admob.smartads:
//            SmartAdsBaseContainer

public class SmartAdsInterstitialContainer extends SmartAdsBaseContainer
{

    private Handler mHandler;

    public SmartAdsInterstitialContainer(Activity activity, int i, String s, int j)
    {
        super(activity, i, s, j);
        mHandler = new Handler();
    }

    protected void adClicked()
    {
    }

    protected a getResponseHandler(final CustomEventInterstitialListener listener)
    {
        ((SASInterstitialView)mView).a(new c() {

            final SmartAdsInterstitialContainer this$0;
            final CustomEventInterstitialListener val$listener;

            public void onStateChanged(d d1)
            {
                switch (d1.a())
                {
                default:
                    return;

                case 1: // '\001'
                    com.etermax.a.a.a("admob ads", "SmartAdsInterstitialContainer - Interstitial view default.");
                    return;

                case 0: // '\0'
                    com.etermax.a.a.a("admob ads", "SmartAdsInterstitialContainer - Interstitial view expanded.");
                    listener.onPresentScreen();
                    return;

                case 2: // '\002'
                    com.etermax.a.a.a("admob ads", "SmartAdsInterstitialContainer - Interstitial view hidden.");
                    break;
                }
                listener.onDismissScreen();
            }

            
            {
                this$0 = SmartAdsInterstitialContainer.this;
                listener = customeventinterstitiallistener;
                super();
            }
        });
        return new a() {

            final SmartAdsInterstitialContainer this$0;

            public void adLoadingCompleted(com.smartadserver.android.library.d.a a1)
            {
                com.etermax.a.a.c("admob ads", "SmartAdsInterstitialContainer - adLoadingCompleted");
                try
                {
                    mHandler.post(new Runnable() {

                        final _cls2 this$1;

                        public void run()
                        {
                            f.a();
                        }

            
            {
                this$1 = _cls2.this;
                super();
            }
                    });
                    return;
                }
                catch (Exception exception)
                {
                    com.etermax.a.a.a("SMARTADS", "Error calling ShowInterstitialListener onSuccess()", exception);
                }
            }

            public void adLoadingFailed(Exception exception)
            {
                com.etermax.a.a.c("admob ads", "SmartAdsInterstitialContainer - adLoadingFailed");
                try
                {
                    mHandler.post(new Runnable() {

                        final _cls2 this$1;

                        public void run()
                        {
                            f.b();
                        }

            
            {
                this$1 = _cls2.this;
                super();
            }
                    });
                    return;
                }
                catch (Exception exception1)
                {
                    com.etermax.a.a.a("SMARTADS", "Error calling ShowInterstitialListener onFailed()", exception1);
                }
            }

            
            {
                this$0 = SmartAdsInterstitialContainer.this;
                super();
            }
        };
    }

    protected volatile a getResponseHandler(CustomEventListener customeventlistener)
    {
        return getResponseHandler((CustomEventInterstitialListener)customeventlistener);
    }

    protected void initAdsView(Context context)
    {
        mView = new SASInterstitialView(context);
        ((SASInterstitialView)mView).setLoaderView(getLoader(context, -1));
        SASInterstitialView.setDefaultAdLoadingTimeout(12000);
    }

}
