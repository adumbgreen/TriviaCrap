// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mologiq.analytics;

import android.content.Context;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;

// Referenced classes of package com.mologiq.analytics:
//            f

public class i
{

    final f a;
    private final Context b;

    public i(f f, Context context)
    {
        a = f;
        super();
        b = context;
    }

    static String a(i j)
    {
        return j.b();
    }

    private String b()
    {
        com.google.android.gms.ads.identifier.AdvertisingIdClient.Info info;
        String s;
        String s1;
        try
        {
            info = AdvertisingIdClient.getAdvertisingIdInfo(b.getApplicationContext());
        }
        catch (Exception exception)
        {
            return null;
        }
        s = null;
        if (info == null)
        {
            break MISSING_BLOCK_LABEL_26;
        }
        s1 = info.getId();
        s = s1;
        return s;
    }

    public boolean a()
    {
        com.google.android.gms.ads.identifier.AdvertisingIdClient.Info info;
        boolean flag;
        boolean flag1;
        try
        {
            info = AdvertisingIdClient.getAdvertisingIdInfo(b.getApplicationContext());
        }
        catch (Exception exception)
        {
            return false;
        }
        flag = false;
        if (info == null)
        {
            break MISSING_BLOCK_LABEL_26;
        }
        flag1 = info.isLimitAdTrackingEnabled();
        flag = flag1;
        return flag;
    }
}
