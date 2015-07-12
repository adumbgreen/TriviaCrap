// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;

import android.app.Activity;
import android.content.Context;
import com.etermax.a.a;
import com.etermax.mopubads.custom.BaseCustomEventInterstitial;
import com.inmobi.commons.InMobi;
import com.inmobi.monetization.IMErrorCode;
import com.inmobi.monetization.IMInterstitial;
import com.inmobi.monetization.IMInterstitialListener;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

// Referenced classes of package com.mopub.mobileads:
//            MoPubErrorCode

public class InMobiInterstitial extends BaseCustomEventInterstitial
    implements IMInterstitialListener
{

    private static boolean c = false;
    private CustomEventInterstitial.CustomEventInterstitialListener a;
    private IMInterstitial b;

    public InMobiInterstitial()
    {
    }

    protected void a(Context context, CustomEventInterstitial.CustomEventInterstitialListener customeventinterstitiallistener, JSONObject jsonobject)
    {
        a = customeventinterstitiallistener;
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
                a.onInterstitialFailed(MoPubErrorCode.UNSPECIFIED);
                return;
            }
            catch (Exception exception)
            {
                com.etermax.a.a.b("InMobiAdapter", "interstitial ad failed to load.");
            }
            break MISSING_BLOCK_LABEL_143;
        }
        if (!c)
        {
            InMobi.initialize(activity, s);
            c = true;
        }
        b = new IMInterstitial(activity, s);
        hashmap = new HashMap();
        hashmap.put("tp", "c_mopub");
        hashmap.put("tp-ver", "3.2.2");
        b.setRequestParams(hashmap);
        b.setIMInterstitialListener(this);
        b.loadInterstitial();
        return;
        a.onInterstitialFailed(MoPubErrorCode.UNSPECIFIED);
        return;
_L2:
        activity = null;
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void onDismissInterstitialScreen(IMInterstitial iminterstitial)
    {
        a.onInterstitialDismissed();
    }

    public void onInterstitialFailed(IMInterstitial iminterstitial, IMErrorCode imerrorcode)
    {
        if (imerrorcode == IMErrorCode.INTERNAL_ERROR)
        {
            a.onInterstitialFailed(MoPubErrorCode.INTERNAL_ERROR);
            return;
        }
        if (imerrorcode == IMErrorCode.INVALID_REQUEST)
        {
            a.onInterstitialFailed(MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR);
            return;
        }
        if (imerrorcode == IMErrorCode.NETWORK_ERROR)
        {
            a.onInterstitialFailed(MoPubErrorCode.NETWORK_INVALID_STATE);
            return;
        }
        if (imerrorcode == IMErrorCode.NO_FILL)
        {
            a.onInterstitialFailed(MoPubErrorCode.NO_FILL);
            return;
        } else
        {
            a.onInterstitialFailed(MoPubErrorCode.UNSPECIFIED);
            return;
        }
    }

    public void onInterstitialInteraction(IMInterstitial iminterstitial, Map map)
    {
        a.onInterstitialClicked();
    }

    public void onInterstitialLoaded(IMInterstitial iminterstitial)
    {
        a.onInterstitialLoaded();
    }

    public void onInvalidate()
    {
        if (b != null)
        {
            b.setIMInterstitialListener(null);
            b.destroy();
        }
    }

    public void onLeaveApplication(IMInterstitial iminterstitial)
    {
    }

    public void onShowInterstitialScreen(IMInterstitial iminterstitial)
    {
        a.onInterstitialShown();
    }

    public void showInterstitial()
    {
        if (b != null && com.inmobi.monetization.IMInterstitial.State.READY.equals(b.getState()))
        {
            b.show();
        }
    }

}
