// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.admob.mdotm;

import android.app.Activity;
import android.os.Handler;
import com.etermax.a.a;
import com.etermax.admob.custom.BaseCustomEventInterstitial;
import com.etermax.adsinterface.f;
import com.google.ads.mediation.MediationAdRequest;
import com.google.ads.mediation.customevent.CustomEventInterstitialListener;
import com.mdotm.android.c.d;
import com.mdotm.android.view.b;
import org.json.JSONObject;

public class MdotMCustomEventInterstitial extends BaseCustomEventInterstitial
    implements d
{

    Activity mActivity;
    Handler mHandler;
    b mInterstitialView;
    CustomEventInterstitialListener mListener;

    public MdotMCustomEventInterstitial()
    {
    }

    public void destroy()
    {
        if (mInterstitialView != null)
        {
            mInterstitialView = null;
        }
        super.destroy();
    }

    public void didShowInterstitial()
    {
        mListener.onPresentScreen();
        a.c("admob ads", "MdotMCustomEventInterstitial - didShowInterstitial");
    }

    public void onBannerAdClick()
    {
    }

    public void onDismissScreen()
    {
    }

    public void onFailedToReceiveBannerAd()
    {
    }

    public void onFailedToReceiveInterstitialAd()
    {
        mListener.onFailedToReceiveAd();
        a.c("admob ads", "MdotMCustomEventInterstitial - onFailedToReceiveInterstitialAd");
    }

    public void onInterstitialAdClick()
    {
        a.c("admob ads", "MdotMCustomEventInterstitial - onInterstitialAdClick");
    }

    public void onInterstitialDismiss()
    {
        mListener.onDismissScreen();
        a.c("admob ads", "MdotMCustomEventInterstitial - onInterstitialDismiss");
    }

    public void onLeaveApplicationFromBanner()
    {
    }

    public void onLeaveApplicationFromInterstitial()
    {
        a.c("admob ads", "MdotMCustomEventInterstitial - onLeaveApplicationFromInterstitial");
    }

    public void onReceiveBannerAd()
    {
    }

    public void onReceiveInterstitialAd()
    {
        mListener.onReceivedAd();
        a.c("admob ads", "MdotMCustomEventInterstitial - onReceiveInterstitialAd");
    }

    protected void requestCustomInterstitialAd(CustomEventInterstitialListener customeventinterstitiallistener, Activity activity, String s, JSONObject jsonobject, MediationAdRequest mediationadrequest, Object obj)
    {
        mListener = customeventinterstitiallistener;
        mActivity = activity;
        mHandler = new Handler();
        String s1 = jsonobject.getString("key");
        com.mdotm.android.d.a a1 = new com.mdotm.android.d.a();
        a1.b(s1);
        a1.a("0");
        a1.a(true);
        mInterstitialView = new b(mActivity);
        mInterstitialView.a(this, a1);
_L1:
        return;
        Exception exception;
        exception;
        a.a("admob ads", "MdotMCustomEventInterstitial - exception", exception);
        if (mListener != null)
        {
            mListener.onFailedToReceiveAd();
            return;
        }
          goto _L1
    }

    public void showInterstitial()
    {
        mInterstitialView.a(mActivity);
        try
        {
            mHandler.post(new Runnable() {

                final MdotMCustomEventInterstitial this$0;

                public void run()
                {
                    f.a();
                }

            
            {
                this$0 = MdotMCustomEventInterstitial.this;
                super();
            }
            });
            return;
        }
        catch (Exception exception2)
        {
            try
            {
                a.a("admob ads", "MdotMCustomEventInterstitial - Error calling ShowInterstitialListener onSuccess()", exception2);
                return;
            }
            catch (Exception exception)
            {
                a.a("admob ads", "Excepci\363n mostrando ad MdotM", exception);
            }
        }
        try
        {
            mHandler.post(new Runnable() {

                final MdotMCustomEventInterstitial this$0;

                public void run()
                {
                    f.b();
                }

            
            {
                this$0 = MdotMCustomEventInterstitial.this;
                super();
            }
            });
            return;
        }
        catch (Exception exception1)
        {
            a.a("admob ads", "MdotMCustomEventInterstitial - Error calling ShowInterstitialListener onFailed()", exception1);
        }
        return;
    }

    public void willShowInterstitial()
    {
    }
}
