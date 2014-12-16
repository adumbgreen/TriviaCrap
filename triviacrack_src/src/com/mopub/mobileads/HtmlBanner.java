// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;

import android.content.Context;
import android.net.Uri;
import com.mopub.mobileads.factories.HtmlBannerWebViewFactory;
import java.util.Map;

// Referenced classes of package com.mopub.mobileads:
//            CustomEventBanner, AdConfiguration, AdViewController, HtmlBannerWebView, 
//            MoPubErrorCode

public class HtmlBanner extends CustomEventBanner
{

    private HtmlBannerWebView a;

    public HtmlBanner()
    {
    }

    private boolean a(Map map)
    {
        return map.containsKey("Html-Response-Body");
    }

    protected void a(Context context, CustomEventBanner.CustomEventBannerListener customeventbannerlistener, Map map, Map map1)
    {
        if (a(map1))
        {
            String s = Uri.decode((String)map1.get("Html-Response-Body"));
            String s1 = (String)map1.get("Redirect-Url");
            String s2 = (String)map1.get("Clickthrough-Url");
            Boolean boolean1 = Boolean.valueOf((String)map1.get("Scrollable"));
            AdConfiguration adconfiguration = AdConfiguration.a(map);
            a = HtmlBannerWebViewFactory.create(context, customeventbannerlistener, boolean1.booleanValue(), s1, s2, adconfiguration);
            AdViewController.a(a);
            a.a(s);
            return;
        } else
        {
            customeventbannerlistener.onBannerFailed(MoPubErrorCode.NETWORK_INVALID_STATE);
            return;
        }
    }

    protected void onInvalidate()
    {
        if (a != null)
        {
            a.destroy();
        }
    }
}
