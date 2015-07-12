// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.common;

import android.content.Context;
import android.location.Location;
import android.location.LocationManager;
import com.mopub.common.logging.MoPubLog;
import java.math.BigDecimal;

public class LocationService
{

    public LocationService()
    {
    }

    public static Location getLastKnownLocation(Context context, int i, MoPub.LocationAwareness locationawareness)
    {
        if (locationawareness != MoPub.LocationAwareness.DISABLED) goto _L2; else goto _L1
_L1:
        return null;
_L2:
        LocationManager locationmanager = (LocationManager)context.getSystemService("location");
        Location location3 = locationmanager.getLastKnownLocation("gps");
        Location location = location3;
_L3:
        Location location2 = locationmanager.getLastKnownLocation("network");
        Location location1 = location2;
_L4:
        if (location != null || location1 != null)
        {
            IllegalArgumentException illegalargumentexception;
            IllegalArgumentException illegalargumentexception1;
            SecurityException securityexception;
            SecurityException securityexception1;
            if (location != null && location1 != null)
            {
                if (location.getTime() <= location1.getTime())
                {
                    location = location1;
                }
            } else
            if (location == null)
            {
                location = location1;
            }
            if (locationawareness == MoPub.LocationAwareness.TRUNCATED)
            {
                location.setLatitude(BigDecimal.valueOf(location.getLatitude()).setScale(i, 5).doubleValue());
                location.setLongitude(BigDecimal.valueOf(location.getLongitude()).setScale(i, 5).doubleValue());
            }
            return location;
        }
          goto _L1
        securityexception1;
        MoPubLog.d("Failed to retrieve GPS location: access appears to be disabled.");
        location = null;
          goto _L3
        illegalargumentexception;
        MoPubLog.d("Failed to retrieve GPS location: device has no GPS provider.");
        location = null;
          goto _L3
        securityexception;
        MoPubLog.d("Failed to retrieve network location: access appears to be disabled.");
        location1 = null;
          goto _L4
        illegalargumentexception1;
        MoPubLog.d("Failed to retrieve network location: device has no network provider.");
        location1 = null;
          goto _L4
    }
}
