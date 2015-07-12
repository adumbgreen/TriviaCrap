// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;

import android.content.Context;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.etermax.a.a;
import com.etermax.k;
import com.facebook.ads.Ad;
import com.facebook.ads.AdError;
import com.facebook.ads.AdListener;
import com.facebook.ads.AdSize;
import com.facebook.ads.AdView;
import com.mopub.common.util.Views;
import java.util.Map;

// Referenced classes of package com.mopub.mobileads:
//            CustomEventBanner, MoPubErrorCode

public class FacebookBannerV2 extends CustomEventBanner
    implements AdListener
{

    private AdView a;
    private ViewGroup b;
    private CustomEventBanner.CustomEventBannerListener c;

    public FacebookBannerV2()
    {
    }

    private boolean a(Map map)
    {
        String s = (String)map.get("placement_id");
        return s != null && s.length() > 0;
    }

    protected void a(Context context, CustomEventBanner.CustomEventBannerListener customeventbannerlistener, Map map, Map map1)
    {
        c = customeventbannerlistener;
        if (a(map1))
        {
            a = new AdView(context, (String)map1.get("placement_id"), AdSize.BANNER_320_50);
            a.setAdListener(this);
            a.loadAd();
            b = (ViewGroup)LayoutInflater.from(context).inflate(k.facebook_banner_container, new LinearLayout(context), false);
            b.addView(a);
            return;
        } else
        {
            c.onBannerFailed(MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR);
            return;
        }
    }

    public void onAdClicked(Ad ad)
    {
        Log.d("MoPub", "Facebook banner ad clicked.");
        c.onBannerClicked();
    }

    public void onAdLoaded(Ad ad)
    {
        Log.d("MoPub", "Facebook banner ad loaded successfully. Showing ad...");
        c.onBannerLoaded(b);
    }

    public void onError(Ad ad, AdError aderror)
    {
        Log.d("MoPub", "Facebook banner ad failed to load.");
        if (aderror.getErrorCode() == AdError.NO_FILL.getErrorCode())
        {
            c.onBannerFailed(MoPubErrorCode.NETWORK_NO_FILL);
            return;
        }
        if (aderror.getErrorCode() == AdError.INTERNAL_ERROR.getErrorCode())
        {
            c.onBannerFailed(MoPubErrorCode.NETWORK_INVALID_STATE);
            return;
        } else
        {
            c.onBannerFailed(MoPubErrorCode.UNSPECIFIED);
            return;
        }
    }

    protected void onInvalidate()
    {
        if (a != null)
        {
            Views.removeFromParent(a);
            try
            {
                a.destroy();
            }
            catch (Exception exception)
            {
                com.etermax.a.a.a("FacebookBannerV2", "Error al hacer destroy del banner de facebook", exception);
            }
            a = null;
        }
        if (b != null)
        {
            Views.removeFromParent(b);
            b = null;
        }
    }
}
