// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.admob.mopub;

import android.app.Activity;
import android.os.Handler;
import com.etermax.a.a;
import com.etermax.admob.custom.BaseCustomEventInterstitial;
import com.etermax.adsinterface.f;
import com.google.ads.mediation.MediationAdRequest;
import com.google.ads.mediation.customevent.CustomEventInterstitialListener;
import com.mopub.mobileads.MoPubErrorCode;
import com.mopub.mobileads.MoPubInterstitial;
import org.json.JSONObject;

public class MoPubCustomEventInterstitial extends BaseCustomEventInterstitial
    implements com.mopub.mobileads.MoPubInterstitial.InterstitialAdListener
{

    boolean interstitialLoaded;
    Handler mHandler;
    MoPubInterstitial mInterstitial;
    CustomEventInterstitialListener mListener;
    boolean showInterstitial;

    public MoPubCustomEventInterstitial()
    {
        mHandler = new Handler();
        interstitialLoaded = false;
        showInterstitial = false;
    }

    public void destroy()
    {
        if (mInterstitial != null)
        {
            mInterstitial.destroy();
            mInterstitial = null;
        }
        super.destroy();
    }

    public void onInterstitialClicked(MoPubInterstitial mopubinterstitial)
    {
        if (interstitialLoaded && showInterstitial)
        {
            a.c("admob ads", (new StringBuilder()).append("MoPubCustomEventInterstitial - onInterstitialClicked - ").append(toString()).toString());
        }
    }

    public void onInterstitialDismissed(MoPubInterstitial mopubinterstitial)
    {
        if (interstitialLoaded && showInterstitial)
        {
            mListener.onDismissScreen();
            a.c("admob ads", (new StringBuilder()).append("MoPubCustomEventInterstitial - onInterstitialDismissed - ").append(toString()).toString());
        }
    }

    public void onInterstitialFailed(MoPubInterstitial mopubinterstitial, MoPubErrorCode mopuberrorcode)
    {
        if (!interstitialLoaded && !showInterstitial)
        {
            mListener.onFailedToReceiveAd();
        }
        a.c("admob ads", (new StringBuilder()).append("MoPubCustomEventInterstitial - onInterstitialFailed - error: ").append(mopuberrorcode.toString()).toString());
    }

    public void onInterstitialLoaded(MoPubInterstitial mopubinterstitial)
    {
        if (!showInterstitial)
        {
            interstitialLoaded = true;
            mListener.onReceivedAd();
            a.c("admob ads", (new StringBuilder()).append("MoPubCustomEventInterstitial - onInterstitialLoaded - ").append(toString()).toString());
        }
    }

    public void onInterstitialShown(MoPubInterstitial mopubinterstitial)
    {
        if (showInterstitial)
        {
            mListener.onPresentScreen();
            a.c("admob ads", (new StringBuilder()).append("MoPubCustomEventInterstitial - onInterstitialShown - ").append(toString()).toString());
        }
    }

    protected void requestCustomInterstitialAd(CustomEventInterstitialListener customeventinterstitiallistener, Activity activity, String s, JSONObject jsonobject, MediationAdRequest mediationadrequest, Object obj)
    {
        mListener = customeventinterstitiallistener;
        String s1 = jsonobject.getString("adunit");
        a.c("admob ads", (new StringBuilder()).append("MoPubCustomEventInterstitial - adUnitId = ").append(s1).append(" - ").append(toString()).toString());
        mInterstitial = new MoPubInterstitial(activity, s1);
        mInterstitial.setInterstitialAdListener(this);
        mInterstitial.load();
_L1:
        return;
        Exception exception;
        exception;
        a.a("admob ads", "MoPubCustomEventInterstitial - Exception", exception);
        if (mListener != null)
        {
            mListener.onFailedToReceiveAd();
            return;
        }
          goto _L1
    }

    public void showInterstitial()
    {
        a.c("admob ads", "MoPubCustomEventInterstitial - showInterstitial");
        showInterstitial = true;
        if (mInterstitial != null && mInterstitial.isReady())
        {
            mInterstitial.show();
            try
            {
                mHandler.post(new Runnable() {

                    final MoPubCustomEventInterstitial this$0;

                    public void run()
                    {
                        f.a();
                    }

            
            {
                this$0 = MoPubCustomEventInterstitial.this;
                super();
            }
                });
                return;
            }
            catch (Exception exception1)
            {
                a.a("admob ads", "Error calling ShowInterstitialListener onSuccess()", exception1);
            }
            return;
        }
        try
        {
            mHandler.post(new Runnable() {

                final MoPubCustomEventInterstitial this$0;

                public void run()
                {
                    f.b();
                }

            
            {
                this$0 = MoPubCustomEventInterstitial.this;
                super();
            }
            });
            return;
        }
        catch (Exception exception)
        {
            a.a("admob ads", "Error calling ShowInterstitialListener onFailed()", exception);
        }
    }
}
