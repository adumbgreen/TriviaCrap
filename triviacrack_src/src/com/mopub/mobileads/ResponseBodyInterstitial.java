// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;

import android.content.Context;
import java.util.Map;

// Referenced classes of package com.mopub.mobileads:
//            CustomEventInterstitial, AdConfiguration, p, MoPubErrorCode

abstract class ResponseBodyInterstitial extends CustomEventInterstitial
{

    protected Context a;
    protected AdConfiguration b;
    long c;
    private p d;

    ResponseBodyInterstitial()
    {
    }

    private boolean b(Map map)
    {
        return map.containsKey("Html-Response-Body");
    }

    protected void a(Context context, CustomEventInterstitial.CustomEventInterstitialListener customeventinterstitiallistener, Map map, Map map1)
    {
        a = context;
        if (b(map1))
        {
            a(map1);
            b = AdConfiguration.a(map);
            if (b != null)
            {
                c = b.d();
            }
            d = new p(customeventinterstitiallistener, c);
            d.register(context);
            a(customeventinterstitiallistener);
            return;
        } else
        {
            customeventinterstitiallistener.onInterstitialFailed(MoPubErrorCode.NETWORK_INVALID_STATE);
            return;
        }
    }

    protected abstract void a(CustomEventInterstitial.CustomEventInterstitialListener customeventinterstitiallistener);

    protected abstract void a(Map map);

    protected void onInvalidate()
    {
        if (d != null)
        {
            d.unregister();
        }
    }
}
