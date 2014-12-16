// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.smartadserver.android.library.controller.mraid;

import com.smartadserver.android.library.controller.mraid.a.a;
import com.smartadserver.android.library.h.c;
import com.smartadserver.android.library.ui.SASAdView;

public class e
{

    public static String a = "mraidsensor";
    final int b = 1000;
    private SASAdView c;
    private a d;
    private float e;
    private float f;
    private float g;
    private boolean h;
    private boolean i;
    private boolean j;

    public e(SASAdView sasadview)
    {
        e = 0.0F;
        f = 0.0F;
        g = 0.0F;
        h = false;
        i = false;
        j = false;
        c = sasadview;
        d = new a(sasadview.getContext(), this);
        a();
    }

    public void a()
    {
        d.h();
        h = false;
        i = false;
        j = false;
    }

    public void a(float f1)
    {
        String s = (new StringBuilder()).append("mraid.fireHeadingChangeEvent(").append((int)(57.295779513082323D * (double)f1)).append(");").toString();
        c.b(s);
    }

    public void a(float f1, float f2, float f3)
    {
        e = f1;
        f = f2;
        g = f3;
        String s = (new StringBuilder()).append("mraid.fireTiltChangeEvent(").append(c()).append(")").toString();
        c.b(s);
    }

    public void b()
    {
        c.b("mraid.fireShakeEvent()");
    }

    public String c()
    {
        return (new StringBuilder()).append("{ x : \"").append(e).append("\", y : \"").append(f).append("\", z : \"").append(g).append("\"}").toString();
    }

    public void d()
    {
        d.h();
    }

    public void e()
    {
        if (h)
        {
            d.c();
        }
        if (i)
        {
            d.a();
        }
        if (j)
        {
            d.e();
        }
    }

    public void startHeadingListener()
    {
        com.smartadserver.android.library.h.c.a("SASMRAIDSensorController", "startHeadingListener");
        j = true;
        d.e();
    }

    public void startShakeListener()
    {
        com.smartadserver.android.library.h.c.a("SASMRAIDSensorController", "startShakeListener");
        h = true;
        d.c();
    }

    public void startTiltListener()
    {
        com.smartadserver.android.library.h.c.a("SASMRAIDSensorController", "startTiltListener");
        i = true;
        d.a();
    }

    public void stopHeadingListener()
    {
        com.smartadserver.android.library.h.c.a("SASMRAIDSensorController", "stopHeadingListener");
        j = false;
        d.f();
    }

    public void stopShakeListener()
    {
        com.smartadserver.android.library.h.c.a("SASMRAIDSensorController", "stopShakeListener");
        h = false;
        d.d();
    }

    public void stopTiltListener()
    {
        com.smartadserver.android.library.h.c.a("SASMRAIDSensorController", "stopTiltListener");
        i = false;
        d.b();
    }

}
