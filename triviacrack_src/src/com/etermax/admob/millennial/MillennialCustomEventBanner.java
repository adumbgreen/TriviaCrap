// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.admob.millennial;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.widget.RelativeLayout;
import com.etermax.a.a;
import com.etermax.admob.custom.BaseCustomEventBanner;
import com.google.ads.AdSize;
import com.google.ads.mediation.MediationAdRequest;
import com.google.ads.mediation.customevent.CustomEventBannerListener;
import com.millennialmedia.android.MMAd;
import com.millennialmedia.android.MMAdView;
import com.millennialmedia.android.MMException;
import com.millennialmedia.android.MMSDK;
import com.millennialmedia.android.RequestListener;
import java.util.Hashtable;
import org.json.JSONObject;

// Referenced classes of package com.etermax.admob.millennial:
//            MillennialHelper

public class MillennialCustomEventBanner extends BaseCustomEventBanner
    implements RequestListener
{

    MMAdView mAdView;
    CustomEventBannerListener mListener;
    RelativeLayout wrappedAdView;

    public MillennialCustomEventBanner()
    {
    }

    public void MMAdOverlayClosed(MMAd mmad)
    {
        mListener.onDismissScreen();
        a.c("admob ads", "MillennialCustomEventBanner - MMAdOverlayClosed");
    }

    public void MMAdOverlayLaunched(MMAd mmad)
    {
        mListener.onPresentScreen();
        a.c("admob ads", "MillennialCustomEventBanner - MMAdOverlayLaunched");
    }

    public void MMAdRequestIsCaching(MMAd mmad)
    {
        a.c("admob ads", "MillennialCustomEventBanner - MMAdRequestIsCaching");
    }

    protected boolean canFit(Context context, int i)
    {
        int j = MillennialHelper.dip(i, context);
        return context.getResources().getDisplayMetrics().widthPixels >= j;
    }

    public void destroy()
    {
        mAdView.setListener(null);
    }

    public void onSingleTap(MMAd mmad)
    {
        mListener.onClick();
        a.c("admob ads", "MillennialCustomEventBanner - onSingleTap");
    }

    public void requestCompleted(MMAd mmad)
    {
        mListener.onReceivedAd(wrappedAdView);
        a.c("admob ads", "MillennialCustomEventBanner - requestCompleted");
    }

    protected void requestCustomBannerAd(CustomEventBannerListener customeventbannerlistener, Activity activity, String s, JSONObject jsonobject, AdSize adsize, MediationAdRequest mediationadrequest, Object obj)
    {
        char c;
        c = '\u02D8';
        mListener = customeventbannerlistener;
        String s1;
        Hashtable hashtable;
        MMSDK.initialize(activity);
        s1 = MillennialHelper.getApId(jsonobject);
        hashtable = new Hashtable();
        mAdView = new MMAdView(activity);
        mAdView.setApid(s1);
        byte byte0 = 50;
        if (!canFit(activity, 728)) goto _L2; else goto _L1
_L1:
        byte0 = 90;
_L4:
        mAdView.setWidth(c);
        mAdView.setHeight(byte0);
        android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(MillennialHelper.dip(c, activity), MillennialHelper.dip(byte0, activity));
        layoutparams.addRule(10);
        layoutparams.addRule(14);
        mAdView.setLayoutParams(layoutparams);
        mAdView.setId(MMSDK.getDefaultAdId());
        MillennialHelper.populateAdViewParameters(mAdView, hashtable, mediationadrequest, null);
        mAdView.setListener(this);
        wrappedAdView = new RelativeLayout(activity);
        wrappedAdView.setLayoutParams(new android.widget.RelativeLayout.LayoutParams(MillennialHelper.dip(c, activity), MillennialHelper.dip(byte0, activity)));
        wrappedAdView.addView(mAdView);
        a.c("admob ads", (new StringBuilder()).append("MillennialCustomEventBanner - fetching Millennial apid = ").append(s1).toString());
        if (canFit(activity, c))
        {
            mAdView.getAd();
            return;
        }
          goto _L3
_L2:
        if (canFit(activity, 480))
        {
            byte0 = 60;
            c = '\u01E0';
        } else
        {
            c = '\u0140';
        }
        if (true) goto _L4; else goto _L3
_L3:
        try
        {
            mListener.onFailedToReceiveAd();
            return;
        }
        catch (Exception exception)
        {
            a.a("admob ads", "MillennialCustomEventBanner - excepci\363n", exception);
        }
        mListener.onFailedToReceiveAd();
        return;
    }

    public void requestFailed(MMAd mmad, MMException mmexception)
    {
        a.c("admob ads", (new StringBuilder()).append("MillennialCustomEventBanner - requestFailed - ").append(mmexception.getCode()).append(": ").append(mmexception.getMessage()).toString());
        if (mmexception.getCode() == 17)
        {
            mListener.onReceivedAd(wrappedAdView);
            return;
        } else
        {
            mListener.onFailedToReceiveAd();
            return;
        }
    }
}
