// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;

import android.app.Activity;
import android.content.Context;
import com.etermax.a.a;
import com.etermax.mopubads.custom.BaseCustomEventBanner;
import com.inmobi.commons.InMobi;
import com.inmobi.monetization.IMBanner;
import com.inmobi.monetization.IMBannerListener;
import com.inmobi.monetization.IMErrorCode;
import com.mopub.common.util.Views;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

// Referenced classes of package com.mopub.mobileads:
//            MoPubErrorCode

public class InMobiBanner extends BaseCustomEventBanner
    implements IMBannerListener
{

    private static boolean c = false;
    private CustomEventBanner.CustomEventBannerListener a;
    private IMBanner b;

    public InMobiBanner()
    {
    }

    protected void a(Context context, CustomEventBanner.CustomEventBannerListener customeventbannerlistener, JSONObject jsonobject)
    {
        a = customeventbannerlistener;
        String s = jsonobject.getString("key");
        if (!(context instanceof Activity)) goto _L2; else goto _L1
_L1:
        Activity activity = (Activity)context;
_L4:
        if (activity == null)
        {
            HashMap hashmap;
            try
            {
                a.onBannerFailed(null);
                return;
            }
            catch (Exception exception)
            {
                com.etermax.a.a.c("InMobi", "banner ad failed to load.");
            }
            break MISSING_BLOCK_LABEL_157;
        }
        if (!c)
        {
            InMobi.initialize(activity, s);
            c = true;
        }
        b = new IMBanner(activity, s, 15);
        hashmap = new HashMap();
        hashmap.put("tp", "c_mopub");
        hashmap.put("tp-ver", "3.2.2");
        b.setRequestParams(hashmap);
        InMobi.setLogLevel(com.inmobi.commons.InMobi.LOG_LEVEL.VERBOSE);
        b.setIMBannerListener(this);
        b.setRefreshInterval(-1);
        b.loadBanner();
        return;
        a.onBannerFailed(MoPubErrorCode.NO_FILL);
        return;
_L2:
        activity = null;
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void onBannerInteraction(IMBanner imbanner, Map map)
    {
        a.onBannerClicked();
    }

    public void onBannerRequestFailed(IMBanner imbanner, IMErrorCode imerrorcode)
    {
        if (imerrorcode == IMErrorCode.INTERNAL_ERROR)
        {
            a.onBannerFailed(MoPubErrorCode.INTERNAL_ERROR);
            return;
        }
        if (imerrorcode == IMErrorCode.INVALID_REQUEST)
        {
            a.onBannerFailed(MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR);
            return;
        }
        if (imerrorcode == IMErrorCode.NETWORK_ERROR)
        {
            a.onBannerFailed(MoPubErrorCode.NETWORK_INVALID_STATE);
            return;
        }
        if (imerrorcode == IMErrorCode.NO_FILL)
        {
            a.onBannerFailed(MoPubErrorCode.NO_FILL);
            return;
        } else
        {
            a.onBannerFailed(MoPubErrorCode.UNSPECIFIED);
            return;
        }
    }

    public void onBannerRequestSucceeded(IMBanner imbanner)
    {
        if (b != null)
        {
            a.onBannerLoaded(imbanner);
            return;
        } else
        {
            a.onBannerFailed(null);
            return;
        }
    }

    public void onDismissBannerScreen(IMBanner imbanner)
    {
        a.onBannerCollapsed();
    }

    public void onInvalidate()
    {
        if (b != null)
        {
            b.setIMBannerListener(null);
            Views.removeFromParent(b);
            b.destroy();
        }
    }

    public void onLeaveApplication(IMBanner imbanner)
    {
    }

    public void onShowBannerScreen(IMBanner imbanner)
    {
        a.onBannerExpanded();
    }

}
