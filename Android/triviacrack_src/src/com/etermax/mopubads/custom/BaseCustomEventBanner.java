// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.mopubads.custom;

import android.content.Context;
import com.mopub.mobileads.CustomEventBanner;
import com.mopub.mobileads.MoPubErrorCode;
import java.util.Map;
import org.json.JSONObject;

// Referenced classes of package com.etermax.mopubads.custom:
//            a

public abstract class BaseCustomEventBanner extends CustomEventBanner
{

    public BaseCustomEventBanner()
    {
    }

    protected void a(Context context, com.mopub.mobileads.CustomEventBanner.CustomEventBannerListener customeventbannerlistener, Map map, Map map1)
    {
        JSONObject jsonobject = com.etermax.mopubads.custom.a.a(context, map1);
        if (jsonobject != null)
        {
            a(context, customeventbannerlistener, jsonobject);
            return;
        } else
        {
            customeventbannerlistener.onBannerFailed(MoPubErrorCode.CANCELLED);
            return;
        }
    }

    protected abstract void a(Context context, com.mopub.mobileads.CustomEventBanner.CustomEventBannerListener customeventbannerlistener, JSONObject jsonobject);
}
