// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;

import android.content.Context;
import android.location.Location;
import android.location.LocationManager;

// Referenced classes of package com.amazon.device.ads:
//            InternalAdRegistration, IInternalAdRegistration, Log

class AdLocation
{

    private static final String LOG_TAG = "AdLocation";
    private static final float MAX_DISTANCE_IN_KILOMETERS = 3F;
    private int arcminutePrecision;
    private LocationAwareness locationAwareness;

    public AdLocation()
    {
        locationAwareness = LocationAwareness.LOCATION_AWARENESS_TRUNCATED;
        arcminutePrecision = 6;
    }

    private static double roundToArcminutes(double d)
    {
        return (double)Math.round(d * 60D) / 60D;
    }

    public Location getLocation()
    {
        float f;
        Context context;
        f = 3.402823E+38F;
        context = InternalAdRegistration.getInstance().getApplicationContext();
        if (locationAwareness != LocationAwareness.LOCATION_AWARENESS_DISABLED) goto _L2; else goto _L1
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
            if (location != null && location1 != null)
            {
                if (location.distanceTo(location1) / 1000F <= 3F)
                {
                    IllegalArgumentException illegalargumentexception;
                    IllegalArgumentException illegalargumentexception1;
                    float f1;
                    SecurityException securityexception;
                    SecurityException securityexception1;
                    if (location.hasAccuracy())
                    {
                        f1 = location.getAccuracy();
                    } else
                    {
                        f1 = f;
                    }
                    if (location1.hasAccuracy())
                    {
                        f = location1.getAccuracy();
                    }
                    if (f1 < f)
                    {
                        Log.d("AdLocation", "Setting lat/long using GPS determined by distance");
                    } else
                    {
                        Log.d("AdLocation", "Setting lat/long using network determined by distance");
                        location = location1;
                    }
                } else
                if (location.getTime() > location1.getTime())
                {
                    Log.d("AdLocation", "Setting lat/long using GPS");
                } else
                {
                    Log.d("AdLocation", "Setting lat/long using network");
                    location = location1;
                }
            } else
            if (location != null)
            {
                Log.d("AdLocation", "Setting lat/long using GPS, not network");
            } else
            {
                Log.d("AdLocation", "Setting lat/long using network location, not GPS");
                location = location1;
            }
            if (locationAwareness == LocationAwareness.LOCATION_AWARENESS_TRUNCATED)
            {
                location.setLatitude((double)Math.round(roundToArcminutes(location.getLatitude()) * Math.pow(10D, arcminutePrecision)) / Math.pow(10D, arcminutePrecision));
                location.setLongitude((double)Math.round(roundToArcminutes(location.getLongitude()) * Math.pow(10D, arcminutePrecision)) / Math.pow(10D, arcminutePrecision));
            }
            return location;
        }
          goto _L1
        securityexception1;
        Log.d("AdLocation", "Failed to retrieve GPS location: No permissions to access GPS");
        location = null;
          goto _L3
        illegalargumentexception;
        Log.d("AdLocation", "Failed to retrieve GPS location: No GPS found");
        location = null;
          goto _L3
        securityexception;
        Log.d("AdLocation", "Failed to retrieve network location: No permissions to access network location");
        location1 = null;
          goto _L4
        illegalargumentexception1;
        Log.d("AdLocation", "Failed to retrieve network location: No network provider found");
        location1 = null;
          goto _L4
    }

    private class LocationAwareness extends Enum
    {

        private static final LocationAwareness $VALUES[];
        public static final LocationAwareness LOCATION_AWARENESS_DISABLED;
        public static final LocationAwareness LOCATION_AWARENESS_NORMAL;
        public static final LocationAwareness LOCATION_AWARENESS_TRUNCATED;

        public static LocationAwareness valueOf(String s)
        {
            return (LocationAwareness)Enum.valueOf(com/amazon/device/ads/AdLocation$LocationAwareness, s);
        }

        public static LocationAwareness[] values()
        {
            return (LocationAwareness[])$VALUES.clone();
        }

        static 
        {
            LOCATION_AWARENESS_NORMAL = new LocationAwareness("LOCATION_AWARENESS_NORMAL", 0);
            LOCATION_AWARENESS_TRUNCATED = new LocationAwareness("LOCATION_AWARENESS_TRUNCATED", 1);
            LOCATION_AWARENESS_DISABLED = new LocationAwareness("LOCATION_AWARENESS_DISABLED", 2);
            LocationAwareness alocationawareness[] = new LocationAwareness[3];
            alocationawareness[0] = LOCATION_AWARENESS_NORMAL;
            alocationawareness[1] = LOCATION_AWARENESS_TRUNCATED;
            alocationawareness[2] = LOCATION_AWARENESS_DISABLED;
            $VALUES = alocationawareness;
        }

        private LocationAwareness(String s, int i)
        {
            super(s, i);
        }
    }

}
