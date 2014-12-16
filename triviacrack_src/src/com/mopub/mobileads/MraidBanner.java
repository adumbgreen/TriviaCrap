// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;

import android.content.Context;
import android.net.Uri;
import com.mopub.mobileads.factories.MraidViewFactory;
import java.util.Map;

// Referenced classes of package com.mopub.mobileads:
//            CustomEventBanner, MoPubErrorCode, MraidView, AdConfiguration

class MraidBanner extends CustomEventBanner
{

    private MraidView a;
    private CustomEventBanner.CustomEventBannerListener b;

    MraidBanner()
    {
    }

    private void a()
    {
        b.onBannerLoaded(a);
    }

    static void a(MraidBanner mraidbanner)
    {
        mraidbanner.a();
    }

    private boolean a(Map map)
    {
        return map.containsKey("Html-Response-Body");
    }

    private void b()
    {
        b.onBannerFailed(MoPubErrorCode.MRAID_LOAD_ERROR);
    }

    static void b(MraidBanner mraidbanner)
    {
        mraidbanner.b();
    }

    private void c()
    {
        b.onBannerExpanded();
        b.onBannerClicked();
    }

    static void c(MraidBanner mraidbanner)
    {
        mraidbanner.c();
    }

    private void d()
    {
        b.onBannerClicked();
    }

    static void d(MraidBanner mraidbanner)
    {
        mraidbanner.d();
    }

    private void e()
    {
        b.onBannerCollapsed();
    }

    static void e(MraidBanner mraidbanner)
    {
        mraidbanner.e();
    }

    private void f()
    {
        a.setMraidListener(new MraidView.MraidListener() {

            final MraidBanner a;

            public void onClose(MraidView mraidview, MraidView.ViewState viewstate)
            {
                MraidBanner.e(a);
            }

            public void onExpand(MraidView mraidview)
            {
                MraidBanner.c(a);
            }

            public void onFailure(MraidView mraidview)
            {
                MraidBanner.b(a);
            }

            public void onOpen(MraidView mraidview)
            {
                MraidBanner.d(a);
            }

            public void onReady(MraidView mraidview)
            {
                MraidBanner.a(a);
            }

            
            {
                a = MraidBanner.this;
                super();
            }
        });
    }

    private void g()
    {
        a.setMraidListener(null);
    }

    protected void a(Context context, CustomEventBanner.CustomEventBannerListener customeventbannerlistener, Map map, Map map1)
    {
        b = customeventbannerlistener;
        if (a(map1))
        {
            String s = Uri.decode((String)map1.get("Html-Response-Body"));
            a = MraidViewFactory.create(context, AdConfiguration.a(map));
            a.loadHtmlData(s);
            f();
            return;
        } else
        {
            b.onBannerFailed(MoPubErrorCode.MRAID_LOAD_ERROR);
            return;
        }
    }

    protected void onInvalidate()
    {
        if (a != null)
        {
            g();
            a.destroy();
        }
    }
}
