// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package twitter4j;

import java.io.Serializable;

public class GeoLocation
    implements Serializable
{

    private static final long serialVersionUID = 0x582cf3a6a0a774f5L;
    private double latitude;
    private double longitude;

    GeoLocation()
    {
    }

    public GeoLocation(double d, double d1)
    {
        latitude = d;
        longitude = d1;
    }

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (!(obj instanceof GeoLocation))
            {
                return false;
            }
            GeoLocation geolocation = (GeoLocation)obj;
            if (Double.compare(geolocation.getLatitude(), latitude) != 0)
            {
                return false;
            }
            if (Double.compare(geolocation.getLongitude(), longitude) != 0)
            {
                return false;
            }
        }
        return true;
    }

    public double getLatitude()
    {
        return latitude;
    }

    public double getLongitude()
    {
        return longitude;
    }

    public int hashCode()
    {
        long l = Double.doubleToLongBits(latitude);
        int i = (int)(l ^ l >>> 32);
        long l1 = Double.doubleToLongBits(longitude);
        return i * 31 + (int)(l1 ^ l1 >>> 32);
    }

    public String toString()
    {
        return (new StringBuilder()).append("GeoLocation{latitude=").append(latitude).append(", longitude=").append(longitude).append('}').toString();
    }
}
