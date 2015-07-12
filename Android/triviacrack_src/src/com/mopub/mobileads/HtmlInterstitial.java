// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;

import android.net.Uri;
import java.util.Map;

// Referenced classes of package com.mopub.mobileads:
//            ResponseBodyInterstitial, MoPubActivity

public class HtmlInterstitial extends ResponseBodyInterstitial
{

    private String d;
    private boolean e;
    private String f;
    private String g;

    public HtmlInterstitial()
    {
    }

    protected void a(CustomEventInterstitial.CustomEventInterstitialListener customeventinterstitiallistener)
    {
        MoPubActivity.a(a, customeventinterstitiallistener, d);
    }

    protected void a(Map map)
    {
        d = Uri.decode((String)map.get("Html-Response-Body"));
        e = Boolean.valueOf((String)map.get("Scrollable")).booleanValue();
        f = (String)map.get("Redirect-Url");
        g = (String)map.get("Clickthrough-Url");
    }

    protected void showInterstitial()
    {
        MoPubActivity.start(a, d, e, f, g, b);
    }
}
