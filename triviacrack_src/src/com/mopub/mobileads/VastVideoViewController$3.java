// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;

import android.os.Handler;
import android.widget.VideoView;
import com.mopub.common.HttpClient;
import com.mopub.mobileads.util.vast.VastVideoConfiguration;

// Referenced classes of package com.mopub.mobileads:
//            VastVideoViewController, bj

class a
    implements Runnable
{

    final VastVideoViewController a;

    public void run()
    {
        float f = VastVideoViewController.d(a).getDuration();
        float f1 = VastVideoViewController.d(a).getCurrentPosition();
        if (f > 0.0F)
        {
            float f2 = f1 / f;
            if (!VastVideoViewController.e(a) && f1 >= 1000F)
            {
                VastVideoViewController.a(a, true);
                HttpClient.makeTrackingHttpRequest(VastVideoViewController.b(a).getStartTrackers(), a.h());
            }
            if (!VastVideoViewController.f(a) && f2 > 0.25F)
            {
                VastVideoViewController.b(a, true);
                HttpClient.makeTrackingHttpRequest(VastVideoViewController.b(a).getFirstQuartileTrackers(), a.h());
            }
            if (!VastVideoViewController.g(a) && f2 > 0.5F)
            {
                VastVideoViewController.c(a, true);
                HttpClient.makeTrackingHttpRequest(VastVideoViewController.b(a).getMidpointTrackers(), a.h());
            }
            if (!VastVideoViewController.h(a) && f2 > 0.75F)
            {
                VastVideoViewController.d(a, true);
                HttpClient.makeTrackingHttpRequest(VastVideoViewController.b(a).getThirdQuartileTrackers(), a.h());
            }
            if (VastVideoViewController.a(a, VastVideoViewController.d(a).getDuration()))
            {
                VastVideoViewController.j(a).b(VastVideoViewController.i(a) - VastVideoViewController.d(a).getCurrentPosition());
            }
            if (VastVideoViewController.k(a))
            {
                VastVideoViewController.l(a);
            }
        }
        VastVideoViewController.j(a).a(VastVideoViewController.d(a).getDuration() - VastVideoViewController.d(a).getCurrentPosition());
        if (VastVideoViewController.m(a))
        {
            VastVideoViewController.o(a).postDelayed(VastVideoViewController.n(a), 50L);
        }
    }

    ration(VastVideoViewController vastvideoviewcontroller)
    {
        a = vastvideoviewcontroller;
        super();
    }
}
