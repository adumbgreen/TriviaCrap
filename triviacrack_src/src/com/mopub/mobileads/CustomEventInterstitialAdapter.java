// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;

import android.content.Context;
import android.os.Handler;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Json;
import com.mopub.mobileads.factories.CustomEventInterstitialFactory;
import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.mopub.mobileads:
//            MoPubInterstitial, AdViewController, MoPubErrorCode, CustomEventInterstitial, 
//            o

public class CustomEventInterstitialAdapter
    implements CustomEventInterstitial.CustomEventInterstitialListener
{

    public static final int DEFAULT_INTERSTITIAL_TIMEOUT_DELAY = 30000;
    private final MoPubInterstitial a;
    private boolean b;
    private o c;
    private CustomEventInterstitial d;
    private Context e;
    private Map f;
    private Map g;
    private final Handler h = new Handler();
    private final Runnable i = new Runnable() {

        final CustomEventInterstitialAdapter a;

        public void run()
        {
            MoPubLog.d("Third-party network timed out.");
            a.onInterstitialFailed(MoPubErrorCode.NETWORK_TIMEOUT);
            a.c();
        }

            
            {
                a = CustomEventInterstitialAdapter.this;
                super();
            }
    };

    public CustomEventInterstitialAdapter(MoPubInterstitial mopubinterstitial, String s, String s1)
    {
        a = mopubinterstitial;
        g = new HashMap();
        f = new HashMap();
        e = a.getActivity();
        MoPubLog.d((new StringBuilder()).append("Attempting to invoke custom event: ").append(s).toString());
        AdViewController adviewcontroller;
        try
        {
            d = CustomEventInterstitialFactory.create(s);
        }
        catch (Exception exception)
        {
            MoPubLog.d((new StringBuilder()).append("Couldn't locate or instantiate custom event: ").append(s).append(".").toString());
            a.onCustomEventInterstitialFailed(MoPubErrorCode.ADAPTER_NOT_FOUND);
            return;
        }
        try
        {
            g = Json.jsonStringToMap(s1);
        }
        catch (Exception exception1)
        {
            MoPubLog.d((new StringBuilder()).append("Failed to create Map from JSON: ").append(s1).toString());
        }
        f = a.getLocalExtras();
        if (a.getLocation() != null)
        {
            f.put("location", a.getLocation());
        }
        adviewcontroller = a.c().getAdViewController();
        if (adviewcontroller != null)
        {
            f.put("Ad-Configuration", adviewcontroller.d());
        }
    }

    private void e()
    {
        h.removeCallbacks(i);
    }

    private int f()
    {
        if (a == null || a.b() == null || a.b().intValue() < 0)
        {
            return 30000;
        } else
        {
            return 1000 * a.b().intValue();
        }
    }

    void a()
    {
        if (d() || d == null)
        {
            return;
        }
        if (f() > 0)
        {
            h.postDelayed(i, f());
        }
        d.a(e, this, f, g);
    }

    void a(o o1)
    {
        c = o1;
    }

    void b()
    {
        if (d() || d == null)
        {
            return;
        } else
        {
            d.showInterstitial();
            return;
        }
    }

    void c()
    {
        if (d != null)
        {
            d.onInvalidate();
        }
        d = null;
        e = null;
        g = null;
        f = null;
        c = null;
        b = true;
    }

    boolean d()
    {
        return b;
    }

    public void onInterstitialClicked()
    {
        while (d() || c == null) 
        {
            return;
        }
        c.onCustomEventInterstitialClicked();
    }

    public void onInterstitialDismissed()
    {
        while (d() || c == null) 
        {
            return;
        }
        c.onCustomEventInterstitialDismissed();
    }

    public void onInterstitialFailed(MoPubErrorCode mopuberrorcode)
    {
        while (d() || c == null) 
        {
            return;
        }
        if (mopuberrorcode == null)
        {
            mopuberrorcode = MoPubErrorCode.UNSPECIFIED;
        }
        e();
        c.onCustomEventInterstitialFailed(mopuberrorcode);
    }

    public void onInterstitialLoaded()
    {
        if (!d())
        {
            e();
            if (c != null)
            {
                c.onCustomEventInterstitialLoaded();
                return;
            }
        }
    }

    public void onInterstitialShown()
    {
        while (d() || c == null) 
        {
            return;
        }
        c.onCustomEventInterstitialShown();
    }

    public void onLeaveApplication()
    {
        onInterstitialClicked();
    }
}
