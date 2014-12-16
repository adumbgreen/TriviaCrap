// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.android;

import android.content.Context;
import java.lang.ref.WeakReference;

// Referenced classes of package com.millennialmedia.android:
//            VideoAd, AdCache, MMLog, CachedAd

class c extends c
{

    boolean a;
    private WeakReference b;
    private WeakReference c;

    void a()
    {
        if (!a)
        {
            Context context = (Context)c.get();
            if (context != null)
            {
                a(context);
            }
        }
        super.a();
    }

    void a(Context context)
    {
        VideoAd videoad = (VideoAd)b.get();
        if (videoad != null && AdCache.j(context, (new StringBuilder()).append(VideoAd.a(videoad)).append("video.dat").toString()))
        {
            Object aobj[] = new Object[1];
            aobj[0] = VideoAd.a(videoad);
            MMLog.a("VideoAd", String.format("VideoAd video file %s was deleted.", aobj));
        }
    }

    boolean a(CachedAd cachedad)
    {
        if (cachedad != null && (cachedad instanceof VideoAd))
        {
            VideoAd videoad = (VideoAd)cachedad;
            VideoAd videoad1 = (VideoAd)b.get();
            if (videoad1 != null && VideoAd.a(videoad).equals(VideoAd.a(videoad1)))
            {
                a = true;
            }
        }
        return super.a(cachedad);
    }

    public (Context context, VideoAd videoad)
    {
        a = false;
        b = new WeakReference(videoad);
        c = new WeakReference(context);
    }
}
