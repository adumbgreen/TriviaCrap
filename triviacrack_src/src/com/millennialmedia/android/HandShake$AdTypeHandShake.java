// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.android;

import android.content.Context;
import android.content.SharedPreferences;
import org.json.JSONObject;

// Referenced classes of package com.millennialmedia.android:
//            HandShake, MMLog

class b
{

    long a;
    long b;
    boolean c;
    final HandShake d;

    void a(Context context, String s)
    {
        a = System.currentTimeMillis();
        c(context, s);
    }

    void a(android.content.peHandShake pehandshake, String s)
    {
        pehandshake.utLong((new StringBuilder()).append("handshake_lastvideo_").append(s).toString(), a);
        pehandshake.utLong((new StringBuilder()).append("handshake_videointerval_").append(s).toString(), b);
    }

    void a(JSONObject jsonobject)
    {
        if (jsonobject == null)
        {
            return;
        } else
        {
            b = 1000L * jsonobject.optLong("videointerval");
            return;
        }
    }

    boolean a(long l)
    {
        return System.currentTimeMillis() - l < HandShake.f(d);
    }

    boolean a(Context context)
    {
        long l = System.currentTimeMillis();
        MMLog.b("HandShake", (new StringBuilder()).append("canRequestVideo() Current Time:").append(l).append(" Last Video: ").append(a / 1000L).append("  Diff: ").append((l - a) / 1000L).append("  Video interval: ").append(b / 1000L).toString());
        return System.currentTimeMillis() - a > b;
    }

    boolean a(SharedPreferences sharedpreferences, String s)
    {
        boolean flag = sharedpreferences.contains((new StringBuilder()).append("handshake_lastvideo_").append(s).toString());
        boolean flag1 = false;
        if (flag)
        {
            a = sharedpreferences.getLong((new StringBuilder()).append("handshake_lastvideo_").append(s).toString(), a);
            flag1 = true;
        }
        if (sharedpreferences.contains((new StringBuilder()).append("handshake_videointerval_").append(s).toString()))
        {
            b = sharedpreferences.getLong((new StringBuilder()).append("handshake_videointerval_").append(s).toString(), b);
            return true;
        } else
        {
            return flag1;
        }
    }

    void b(Context context, String s)
    {
        SharedPreferences sharedpreferences = context.getSharedPreferences("MillennialMediaSettings", 0);
        if (sharedpreferences != null && sharedpreferences.contains((new StringBuilder()).append("handshake_lastvideo_").append(s).toString()))
        {
            a = sharedpreferences.getLong((new StringBuilder()).append("handshake_lastvideo_").append(s).toString(), a);
        }
    }

    void c(Context context, String s)
    {
        android.content.peHandShake pehandshake = context.getSharedPreferences("MillennialMediaSettings", 0).edit();
        a(pehandshake, s);
        pehandshake.ommit();
    }

    (HandShake handshake)
    {
        d = handshake;
        super();
        a = 0L;
        b = 0L;
    }
}
