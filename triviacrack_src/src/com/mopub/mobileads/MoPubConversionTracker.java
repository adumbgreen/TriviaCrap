// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;

import android.content.Context;
import android.content.SharedPreferences;
import com.mopub.common.GpsHelper;
import com.mopub.common.SharedPreferencesHelper;
import com.mopub.common.logging.MoPubLog;

// Referenced classes of package com.mopub.mobileads:
//            aa

public class MoPubConversionTracker
{

    private Context a;
    private String b;
    private SharedPreferences c;
    private String d;
    private aa e;

    public MoPubConversionTracker()
    {
        e = new aa(this);
    }

    static String a(MoPubConversionTracker mopubconversiontracker)
    {
        return mopubconversiontracker.d;
    }

    private boolean a()
    {
        return c.getBoolean(b, false);
    }

    static Context b(MoPubConversionTracker mopubconversiontracker)
    {
        return mopubconversiontracker.a;
    }

    static String c(MoPubConversionTracker mopubconversiontracker)
    {
        return mopubconversiontracker.b;
    }

    static SharedPreferences d(MoPubConversionTracker mopubconversiontracker)
    {
        return mopubconversiontracker.c;
    }

    public void reportAppOpen(Context context)
    {
        if (context == null)
        {
            return;
        }
        a = context;
        d = a.getPackageName();
        b = (new StringBuilder()).append(d).append(" tracked").toString();
        c = SharedPreferencesHelper.getSharedPreferences(a);
        if (!a())
        {
            GpsHelper.fetchAdvertisingInfoAsync(a, e);
            return;
        } else
        {
            MoPubLog.d("Conversion already tracked");
            return;
        }
    }
}
