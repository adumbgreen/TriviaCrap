// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.content.Context;
import android.content.pm.PackageManager;

// Referenced classes of package com.admarvel.android.ads:
//            ac

class ger
{

    public static boolean a(Context context, String s)
    {
        PackageManager packagemanager = context.getPackageManager();
        if (s.equals("camera"))
        {
            return packagemanager.hasSystemFeature("android.hardware.camera");
        }
        if (ac.a() >= 8)
        {
            if (s.equals("location"))
            {
                return packagemanager.hasSystemFeature("android.hardware.location");
            }
            if (s.equals("accelerometer"))
            {
                return packagemanager.hasSystemFeature("android.hardware.sensor.accelerometer");
            }
            if (s.equals("compass"))
            {
                return packagemanager.hasSystemFeature("android.hardware.sensor.compass");
            }
        }
        return false;
    }
}
