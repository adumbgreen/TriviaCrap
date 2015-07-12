// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;

import android.content.Context;

// Referenced classes of package com.amazon.device.ads:
//            AdController, AdSize

class AdControllerFactory
{

    private static AdController cachedAdController = null;

    AdControllerFactory()
    {
    }

    public static AdController buildAdController(Context context, AdSize adsize)
    {
        AdController adcontroller;
        try
        {
            adcontroller = new AdController(context, adsize);
        }
        catch (IllegalStateException illegalstateexception)
        {
            return null;
        }
        return adcontroller;
    }

    public static void cacheAdController(AdController adcontroller)
    {
        cachedAdController = adcontroller;
    }

    public static AdController getCachedAdController()
    {
        return cachedAdController;
    }

    public static AdController removeCachedAdController()
    {
        AdController adcontroller = cachedAdController;
        cachedAdController = null;
        return adcontroller;
    }

}
