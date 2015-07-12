// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.admob.mobfox;

import android.app.Activity;
import com.etermax.a.a;
import com.etermax.admob.custom.BaseCustomEventBanner;
import com.google.ads.AdSize;
import com.google.ads.mediation.MediationAdRequest;
import com.google.ads.mediation.customevent.CustomEventBannerListener;
import org.json.JSONObject;

// Referenced classes of package com.etermax.admob.mobfox:
//            MobFoxBannerContainer

public class MobFoxCustomEventBanner extends BaseCustomEventBanner
{

    private MobFoxBannerContainer mMobFoxBannerContainer;

    public MobFoxCustomEventBanner()
    {
    }

    public void destroy()
    {
        if (mMobFoxBannerContainer != null)
        {
            mMobFoxBannerContainer.destroy();
            mMobFoxBannerContainer = null;
        }
    }

    protected void requestCustomBannerAd(CustomEventBannerListener customeventbannerlistener, Activity activity, String s, JSONObject jsonobject, AdSize adsize, MediationAdRequest mediationadrequest, Object obj)
    {
        try
        {
            mMobFoxBannerContainer = new MobFoxBannerContainer(activity, jsonobject.optString("pid"), customeventbannerlistener);
            return;
        }
        catch (Exception exception)
        {
            a.a("admob ads", "MobFoxEventBanner exception", exception);
        }
        customeventbannerlistener.onFailedToReceiveAd();
    }
}
