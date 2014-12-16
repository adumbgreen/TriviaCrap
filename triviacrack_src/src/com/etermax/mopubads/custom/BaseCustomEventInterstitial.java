// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.mopubads.custom;

import android.content.Context;
import com.mopub.mobileads.CustomEventInterstitial;
import com.mopub.mobileads.MoPubErrorCode;
import java.util.Map;
import org.json.JSONObject;

// Referenced classes of package com.etermax.mopubads.custom:
//            a

public abstract class BaseCustomEventInterstitial extends CustomEventInterstitial
{

    public BaseCustomEventInterstitial()
    {
    }

    protected void a(Context context, com.mopub.mobileads.CustomEventInterstitial.CustomEventInterstitialListener customeventinterstitiallistener, Map map, Map map1)
    {
        JSONObject jsonobject = com.etermax.mopubads.custom.a.a(context, map1);
        if (jsonobject != null)
        {
            a(context, customeventinterstitiallistener, jsonobject);
            return;
        } else
        {
            customeventinterstitiallistener.onInterstitialFailed(MoPubErrorCode.CANCELLED);
            return;
        }
    }

    protected abstract void a(Context context, com.mopub.mobileads.CustomEventInterstitial.CustomEventInterstitialListener customeventinterstitiallistener, JSONObject jsonobject);
}
