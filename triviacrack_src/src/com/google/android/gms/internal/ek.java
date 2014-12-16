// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.common.GooglePlayServicesUtil;

// Referenced classes of package com.google.android.gms.internal:
//            dt, ew, fx, en, 
//            eo, el, fo

public final class ek
{

    public static fo a(Context context, dt dt1, el el)
    {
        if (dt1.k.e)
        {
            return b(context, dt1, el);
        } else
        {
            return c(context, dt1, el);
        }
    }

    private static fo b(Context context, dt dt1, el el)
    {
        fx.a("Fetching ad response from local ad request service.");
        en en1 = new en(context, dt1, el);
        en1.e();
        return en1;
    }

    private static fo c(Context context, dt dt1, el el)
    {
        fx.a("Fetching ad response from remote ad request service.");
        if (GooglePlayServicesUtil.isGooglePlayServicesAvailable(context) != 0)
        {
            fx.e("Failed to connect to remote ad request service.");
            return null;
        } else
        {
            return new eo(context, dt1, el);
        }
    }
}
