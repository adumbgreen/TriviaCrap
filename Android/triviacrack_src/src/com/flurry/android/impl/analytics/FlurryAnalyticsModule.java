// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.impl.analytics;

import android.content.Context;
import com.flurry.sdk.da;
import com.flurry.sdk.dg;
import com.flurry.sdk.eq;

public class FlurryAnalyticsModule
    implements eq
{

    private static FlurryAnalyticsModule a;
    private da b;

    private FlurryAnalyticsModule()
    {
    }

    public static FlurryAnalyticsModule getInstance()
    {
        com/flurry/android/impl/analytics/FlurryAnalyticsModule;
        JVM INSTR monitorenter ;
        FlurryAnalyticsModule flurryanalyticsmodule;
        if (a == null)
        {
            a = new FlurryAnalyticsModule();
        }
        flurryanalyticsmodule = a;
        com/flurry/android/impl/analytics/FlurryAnalyticsModule;
        JVM INSTR monitorexit ;
        return flurryanalyticsmodule;
        Exception exception;
        exception;
        throw exception;
    }

    public da a()
    {
        return b;
    }

    public void a(dg dg)
    {
    }

    public void a(dg dg, Context context)
    {
        if (b == null)
        {
            b = new da();
        }
    }

    public void b(dg dg, Context context)
    {
    }

    public void c(dg dg, Context context)
    {
    }
}
