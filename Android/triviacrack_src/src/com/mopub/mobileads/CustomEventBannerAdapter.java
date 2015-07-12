// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;

import android.content.Context;
import android.os.Handler;
import android.view.View;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Json;
import com.mopub.mobileads.factories.CustomEventBannerFactory;
import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.mopub.mobileads:
//            MoPubView, AdViewController, MoPubErrorCode, CustomEventBanner, 
//            HtmlBannerWebView

public class CustomEventBannerAdapter
    implements CustomEventBanner.CustomEventBannerListener
{

    public static final int DEFAULT_BANNER_TIMEOUT_DELAY = 10000;
    private boolean a;
    private MoPubView b;
    private Context c;
    private CustomEventBanner d;
    private Map e;
    private Map f;
    private final Handler g = new Handler();
    private final Runnable h = new Runnable() {

        final CustomEventBannerAdapter a;

        public void run()
        {
            MoPubLog.d("Third-party network timed out.");
            a.onBannerFailed(MoPubErrorCode.NETWORK_TIMEOUT);
            a.b();
        }

            
            {
                a = CustomEventBannerAdapter.this;
                super();
            }
    };
    private boolean i;

    public CustomEventBannerAdapter(MoPubView mopubview, String s, String s1)
    {
        b = mopubview;
        c = mopubview.getContext();
        e = new HashMap();
        f = new HashMap();
        MoPubLog.d((new StringBuilder()).append("Attempting to invoke custom event: ").append(s).toString());
        try
        {
            d = CustomEventBannerFactory.create(s);
        }
        catch (Exception exception)
        {
            MoPubLog.d((new StringBuilder()).append("Couldn't locate or instantiate custom event: ").append(s).append(".").toString());
            b.b(MoPubErrorCode.ADAPTER_NOT_FOUND);
            return;
        }
        try
        {
            f = Json.jsonStringToMap(s1);
        }
        catch (Exception exception1)
        {
            MoPubLog.d((new StringBuilder()).append("Failed to create Map from JSON: ").append(s1).append(exception1.toString()).toString());
        }
        e = b.getLocalExtras();
        if (b.getLocation() != null)
        {
            e.put("location", b.getLocation());
        }
        if (b.getAdViewController() != null)
        {
            e.put("Ad-Configuration", b.getAdViewController().d());
        }
    }

    private void d()
    {
        g.removeCallbacks(h);
    }

    private int e()
    {
        if (b == null || b.getAdTimeoutDelay() == null || b.getAdTimeoutDelay().intValue() < 0)
        {
            return 10000;
        } else
        {
            return 1000 * b.getAdTimeoutDelay().intValue();
        }
    }

    void a()
    {
        if (c() || d == null)
        {
            return;
        }
        if (e() > 0)
        {
            g.postDelayed(h, e());
        }
        d.a(c, this, e, f);
    }

    void b()
    {
        if (d != null)
        {
            d.onInvalidate();
        }
        c = null;
        d = null;
        e = null;
        f = null;
        a = true;
    }

    boolean c()
    {
        return a;
    }

    public void onBannerClicked()
    {
        while (c() || b == null) 
        {
            return;
        }
        b.b();
    }

    public void onBannerCollapsed()
    {
        if (c())
        {
            return;
        } else
        {
            b.setAutorefreshEnabled(i);
            b.f();
            return;
        }
    }

    public void onBannerExpanded()
    {
        if (c())
        {
            return;
        } else
        {
            i = b.getAutorefreshEnabled();
            b.setAutorefreshEnabled(false);
            b.e();
            return;
        }
    }

    public void onBannerFailed(MoPubErrorCode mopuberrorcode)
    {
        while (c() || b == null) 
        {
            return;
        }
        if (mopuberrorcode == null)
        {
            mopuberrorcode = MoPubErrorCode.UNSPECIFIED;
        }
        d();
        b.b(mopuberrorcode);
    }

    public void onBannerLoaded(View view)
    {
        if (!c())
        {
            d();
            if (b != null)
            {
                b.h();
                b.setAdContentView(view);
                if (!(view instanceof HtmlBannerWebView))
                {
                    b.c();
                    return;
                }
            }
        }
    }

    public void onLeaveApplication()
    {
        onBannerClicked();
    }
}
