// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.nativeads;

import android.content.Context;
import android.os.Handler;
import android.os.SystemClock;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.mopub.nativeads:
//            MoPubNative, aj, NativeResponse, v, 
//            RequestParameters, NativeErrorCode

class u
{

    boolean a;
    boolean b;
    int c;
    int d;
    private final List e;
    private final Handler f;
    private final Runnable g;
    private final MoPubNative.MoPubNativeNetworkListener h;
    private v i;
    private RequestParameters j;
    private MoPubNative k;

    u()
    {
        this(((List) (new ArrayList(3))), new Handler());
    }

    u(List list, Handler handler)
    {
        e = list;
        f = handler;
        g = new Runnable() {

            final u a;

            public void run()
            {
                a.b = false;
                a.e();
            }

            
            {
                a = u.this;
                super();
            }
        };
        h = new MoPubNative.MoPubNativeNetworkListener() {

            final u a;

            public void onNativeFail(NativeErrorCode nativeerrorcode)
            {
                a.a = false;
                if (a.d >= 0x493e0)
                {
                    a.d();
                    return;
                } else
                {
                    a.c();
                    a.b = true;
                    u.e(a).postDelayed(u.d(a), a.d);
                    return;
                }
            }

            public void onNativeLoad(NativeResponse nativeresponse)
            {
                if (u.a(a) == null)
                {
                    return;
                }
                a.a = false;
                u u1 = a;
                u1.c = 1 + u1.c;
                a.d();
                u.b(a).add(new aj(nativeresponse));
                if (u.b(a).size() == 1 && u.c(a) != null)
                {
                    u.c(a).onAdsAvailable();
                }
                a.e();
            }

            
            {
                a = u.this;
                super();
            }
        };
        c = 0;
        d = 1000;
    }

    static MoPubNative a(u u1)
    {
        return u1.k;
    }

    static List b(u u1)
    {
        return u1.e;
    }

    static v c(u u1)
    {
        return u1.i;
    }

    static Runnable d(u u1)
    {
        return u1.g;
    }

    static Handler e(u u1)
    {
        return u1.f;
    }

    void a()
    {
        if (k != null)
        {
            k.destroy();
            k = null;
        }
        j = null;
        for (Iterator iterator = e.iterator(); iterator.hasNext(); ((NativeResponse)((aj)iterator.next()).a).destroy()) { }
        e.clear();
        f.removeMessages(0);
        a = false;
        c = 0;
        d();
    }

    void a(Context context, String s, RequestParameters requestparameters)
    {
        a(requestparameters, new MoPubNative(context, s, h));
    }

    void a(RequestParameters requestparameters, MoPubNative mopubnative)
    {
        a();
        j = requestparameters;
        k = mopubnative;
        e();
    }

    void a(v v)
    {
        i = v;
    }

    NativeResponse b()
    {
        long l = SystemClock.uptimeMillis();
        if (!a && !b)
        {
            f.post(g);
        }
        while (!e.isEmpty()) 
        {
            aj aj1 = (aj)e.remove(0);
            if (l - aj1.b < 0xdbba0L)
            {
                return (NativeResponse)aj1.a;
            }
        }
        return null;
    }

    void c()
    {
        d = (int)(2D * (double)d);
        if (d > 0x493e0)
        {
            d = 0x493e0;
        }
    }

    void d()
    {
        d = 1000;
    }

    void e()
    {
        if (!a && k != null && e.size() < 3)
        {
            a = true;
            k.makeRequest(j, Integer.valueOf(c));
        }
    }
}
