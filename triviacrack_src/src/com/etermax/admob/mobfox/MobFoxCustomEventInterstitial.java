// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.admob.mobfox;

import android.app.Activity;
import android.os.Handler;
import com.etermax.a.a;
import com.etermax.admob.custom.BaseCustomEventInterstitial;
import com.etermax.adsinterface.f;
import com.google.ads.mediation.MediationAdRequest;
import com.google.ads.mediation.customevent.CustomEventInterstitialListener;
import org.json.JSONObject;

// Referenced classes of package com.etermax.admob.mobfox:
//            MobFoxInterstitialContainer

public class MobFoxCustomEventInterstitial extends BaseCustomEventInterstitial
{

    private MobFoxInterstitialContainer mContainer;
    private Handler mHandler;

    public MobFoxCustomEventInterstitial()
    {
    }

    public void destroy()
    {
        if (mContainer != null)
        {
            mContainer.destroy();
            mContainer = null;
        }
        super.destroy();
    }

    protected void requestCustomInterstitialAd(CustomEventInterstitialListener customeventinterstitiallistener, Activity activity, String s, JSONObject jsonobject, MediationAdRequest mediationadrequest, Object obj)
    {
        try
        {
            mContainer = new MobFoxInterstitialContainer(activity, jsonobject.optString("pid"), customeventinterstitiallistener);
            return;
        }
        catch (Exception exception)
        {
            a.a("admob ads", "MobFoxEventInterstitial exception", exception);
        }
        customeventinterstitiallistener.onFailedToReceiveAd();
    }

    public void showInterstitial()
    {
        if (mContainer.isAdLoaded())
        {
            mContainer.showInterstitial();
            try
            {
                mHandler.post(new Runnable() {

                    final MobFoxCustomEventInterstitial this$0;

                    public void run()
                    {
                        f.a();
                    }

            
            {
                this$0 = MobFoxCustomEventInterstitial.this;
                super();
            }
                });
                return;
            }
            catch (Exception exception1)
            {
                a.a("MobFox", "Error calling ShowInterstitialListener onSuccess()", exception1);
            }
            return;
        }
        try
        {
            mHandler.post(new Runnable() {

                final MobFoxCustomEventInterstitial this$0;

                public void run()
                {
                    f.b();
                }

            
            {
                this$0 = MobFoxCustomEventInterstitial.this;
                super();
            }
            });
            return;
        }
        catch (Exception exception)
        {
            a.a("MobFox", "Error calling ShowInterstitialListener onFailed()", exception);
        }
    }
}
