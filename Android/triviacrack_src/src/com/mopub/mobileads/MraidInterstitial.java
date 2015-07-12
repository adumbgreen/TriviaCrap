// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;

import android.net.Uri;
import java.util.Map;

// Referenced classes of package com.mopub.mobileads:
//            ResponseBodyInterstitial, MraidActivity

class MraidInterstitial extends ResponseBodyInterstitial
{

    private String d;

    MraidInterstitial()
    {
    }

    protected void a(CustomEventInterstitial.CustomEventInterstitialListener customeventinterstitiallistener)
    {
        MraidActivity.a(a, customeventinterstitiallistener, d);
    }

    protected void a(Map map)
    {
        d = Uri.decode((String)map.get("Html-Response-Body"));
    }

    protected void showInterstitial()
    {
        MraidActivity.start(a, d, b);
    }
}
