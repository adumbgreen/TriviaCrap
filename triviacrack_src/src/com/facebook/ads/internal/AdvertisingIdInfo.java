// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.ads.internal;

import android.content.Context;
import android.os.Looper;

// Referenced classes of package com.facebook.ads.internal:
//            StringUtils, AdUtilities

public class AdvertisingIdInfo
{

    private static final int CONNECTION_RESULT_SUCCESS;
    private final String id;
    private final boolean limitAdTrackingEnabled;

    private AdvertisingIdInfo(String s, boolean flag)
    {
        id = s;
        limitAdTrackingEnabled = flag;
    }

    public static AdvertisingIdInfo getAdvertisingIdInfo(Context context, AdUtilities.Fb4aData fb4adata)
    {
        if (Looper.myLooper() == Looper.getMainLooper())
        {
            throw new IllegalStateException("Cannot get advertising info on main thread.");
        }
        if (fb4adata != null && !StringUtils.isNullOrEmpty(fb4adata.advertisingId))
        {
            return new AdvertisingIdInfo(fb4adata.advertisingId, fb4adata.limitTrackingEnabled);
        }
        java.lang.reflect.Method method = AdUtilities.getMethod("com.google.android.gms.common.GooglePlayServicesUtil", "isGooglePlayServicesAvailable", new Class[] {
            android/content/Context
        });
        if (method == null)
        {
            return null;
        }
        Object obj = AdUtilities.invokeMethod(null, method, new Object[] {
            context
        });
        if (obj == null || ((Integer)obj).intValue() != 0)
        {
            return null;
        }
        java.lang.reflect.Method method1 = AdUtilities.getMethod("com.google.android.gms.ads.identifier.AdvertisingIdClient", "getAdvertisingIdInfo", new Class[] {
            android/content/Context
        });
        if (method1 == null)
        {
            return null;
        }
        Object obj1 = AdUtilities.invokeMethod(null, method1, new Object[] {
            context
        });
        if (obj1 == null)
        {
            return null;
        }
        java.lang.reflect.Method method2 = AdUtilities.getMethod(obj1.getClass(), "getId", new Class[0]);
        java.lang.reflect.Method method3 = AdUtilities.getMethod(obj1.getClass(), "isLimitAdTrackingEnabled", new Class[0]);
        if (method2 == null || method3 == null)
        {
            return null;
        } else
        {
            return new AdvertisingIdInfo((String)AdUtilities.invokeMethod(obj1, method2, new Object[0]), ((Boolean)AdUtilities.invokeMethod(obj1, method3, new Object[0])).booleanValue());
        }
    }

    public String getId()
    {
        return id;
    }

    public boolean isLimitAdTrackingEnabled()
    {
        return limitAdTrackingEnabled;
    }
}
