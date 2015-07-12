// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.admob.lifestreet;

import android.app.Activity;
import android.os.Handler;
import com.etermax.a.a;
import com.etermax.admob.custom.BaseCustomEventInterstitial;
import com.etermax.adsinterface.f;
import com.google.ads.mediation.MediationAdRequest;
import com.google.ads.mediation.customevent.CustomEventInterstitialListener;
import org.json.JSONObject;

// Referenced classes of package com.etermax.admob.lifestreet:
//            LifeStreetInterstitialContainer

public class LifeStreetCustomEventInterstitial extends BaseCustomEventInterstitial
{

    LifeStreetInterstitialContainer mContainer;
    Handler mHandler;

    public LifeStreetCustomEventInterstitial()
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
        mHandler = new Handler();
        try
        {
            String s1 = jsonobject.getString("key");
            mContainer = new LifeStreetInterstitialContainer(customeventinterstitiallistener, activity, (new StringBuilder()).append("http://mobile-android.lfstmedia.com/").append(s1).toString(), mediationadrequest);
            return;
        }
        catch (Exception exception)
        {
            customeventinterstitiallistener.onFailedToReceiveAd();
        }
    }

    public void showInterstitial()
    {
        a.c("admob ads", "LifeStreetCustomEventInterstitial - showInterstitial");
        mContainer.showInterstitial();
        try
        {
            mHandler.post(new Runnable() {

                final LifeStreetCustomEventInterstitial this$0;

                public void run()
                {
                    f.a();
                }

            
            {
                this$0 = LifeStreetCustomEventInterstitial.this;
                super();
            }
            });
            return;
        }
        catch (Exception exception2)
        {
            try
            {
                a.a("admob ads", "LifeStreetCustomEventInterstitial - Error calling ShowInterstitialListener onSuccess()", exception2);
                return;
            }
            catch (Exception exception)
            {
                a.a("admob ads", "Excepci\363n mostrando ad LifeStreet", exception);
            }
        }
        try
        {
            mHandler.post(new Runnable() {

                final LifeStreetCustomEventInterstitial this$0;

                public void run()
                {
                    f.b();
                }

            
            {
                this$0 = LifeStreetCustomEventInterstitial.this;
                super();
            }
            });
            return;
        }
        catch (Exception exception1)
        {
            a.a("admob ads", "LifeStreetCustomEventInterstitial - Error calling ShowInterstitialListener onFailed()", exception1);
        }
        return;
    }
}
