// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.admob.millennial;

import android.app.Activity;
import android.os.Handler;
import com.etermax.a.a;
import com.etermax.admob.custom.BaseCustomEventInterstitial;
import com.etermax.adsinterface.f;
import com.google.ads.mediation.MediationAdRequest;
import com.google.ads.mediation.customevent.CustomEventInterstitialListener;
import com.millennialmedia.android.MMAd;
import com.millennialmedia.android.MMException;
import com.millennialmedia.android.MMInterstitial;
import com.millennialmedia.android.MMSDK;
import com.millennialmedia.android.RequestListener;
import java.util.Hashtable;
import org.json.JSONObject;

// Referenced classes of package com.etermax.admob.millennial:
//            MillennialHelper

public class MillennialCustomEventInterstitial extends BaseCustomEventInterstitial
    implements RequestListener
{

    Handler mHandler;
    MMInterstitial mInterstitialView;
    CustomEventInterstitialListener mListener;

    public MillennialCustomEventInterstitial()
    {
    }

    public void MMAdOverlayClosed(MMAd mmad)
    {
        mListener.onDismissScreen();
        a.c("admob ads", "MillennialCustomEventInterstitial - MMAdOverlayClosed");
    }

    public void MMAdOverlayLaunched(MMAd mmad)
    {
        mListener.onPresentScreen();
        a.c("admob ads", "MillennialCustomEventInterstitial - MMAdOverlayLaunched");
    }

    public void MMAdRequestIsCaching(MMAd mmad)
    {
        a.c("admob ads", "MillennialCustomEventInterstitial - MMAdRequestIsCaching");
    }

    public void destroy()
    {
        mInterstitialView.setListener(null);
        super.destroy();
    }

    public void onSingleTap(MMAd mmad)
    {
        a.c("admob ads", "MillennialCustomEventInterstitial - onSingleTap");
    }

    public void requestCompleted(MMAd mmad)
    {
        mListener.onReceivedAd();
        a.c("admob ads", "MillennialCustomEventInterstitial - requestCompleted");
    }

    protected void requestCustomInterstitialAd(CustomEventInterstitialListener customeventinterstitiallistener, Activity activity, String s, JSONObject jsonobject, MediationAdRequest mediationadrequest, Object obj)
    {
        mListener = customeventinterstitiallistener;
        mHandler = new Handler();
        try
        {
            MMSDK.initialize(activity);
            String s1 = MillennialHelper.getApId(jsonobject);
            Hashtable hashtable = new Hashtable();
            mInterstitialView = new MMInterstitial(activity);
            mInterstitialView.setApid(s1);
            MillennialHelper.populateAdViewParameters(mInterstitialView, hashtable, mediationadrequest, null);
            mInterstitialView.setListener(this);
            mInterstitialView.fetch();
            a.c("admob ads", (new StringBuilder()).append("MillennialCustomEventInterstitial - fetching Millennial apid = ").append(s1).toString());
            return;
        }
        catch (Exception exception)
        {
            mListener.onFailedToReceiveAd();
        }
    }

    public void requestFailed(MMAd mmad, MMException mmexception)
    {
        a.c("admob ads", (new StringBuilder()).append("MillennialCustomEventInterstitial - requestFailed - ").append(mmexception.getCode()).append(": ").append(mmexception.getMessage()).toString());
        if (mmexception.getCode() == 17)
        {
            mListener.onReceivedAd();
            return;
        } else
        {
            mListener.onFailedToReceiveAd();
            return;
        }
    }

    public void showInterstitial()
    {
        a.c("admob ads", "MillennialCustomEventInterstitial - showInterstitial");
        class _cls2
            implements Runnable
        {

            final MillennialCustomEventInterstitial this$0;

            public void run()
            {
                f.b();
            }

            
            {
                this$0 = MillennialCustomEventInterstitial.this;
                super();
            }
        }

        Exception exception;
        if (!mInterstitialView.isAdAvailable())
        {
            throw new RuntimeException("No Ad Available!!");
        }
        mInterstitialView.display();
        try
        {
            mHandler.post(new Runnable() {

                final MillennialCustomEventInterstitial this$0;

                public void run()
                {
                    f.a();
                }

            
            {
                this$0 = MillennialCustomEventInterstitial.this;
                super();
            }
            });
            return;
        }
        catch (Exception exception2)
        {
            try
            {
                a.a("admob ads", "MillennialCustomEventInterstitial - Error calling ShowInterstitialListener onSuccess()", exception2);
                return;
            }
            // Misplaced declaration of an exception variable
            catch (Exception exception)
            {
                a.a("admob ads", "MillennialCustomEventInterstitial - Excepci\363n mostrando ad Millennial", exception);
                try
                {
                    mHandler.post(new _cls2());
                    return;
                }
                catch (Exception exception1)
                {
                    a.a("admob ads", "MillennialCustomEventInterstitial - Error calling ShowInterstitialListener onFailed()", exception1);
                }
            }
        }
        return;
    }
}
