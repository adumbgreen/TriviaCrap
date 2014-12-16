// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.lifestreet.android.lsmsdk;

import android.content.Context;
import android.location.Location;
import com.lifestreet.android.lsmsdk.commons.Utils;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

public final class SlotTargeting
{

    private boolean mAllowAutoLocation;
    private String mAreaCode;
    private String mCity;
    private Gender mGender;
    private String mLatitude;
    private String mLongitude;
    private String mMetro;
    private String mRegion;
    private String mZip;

    public SlotTargeting()
    {
        mAllowAutoLocation = true;
    }

    public String getAreaCode()
    {
        return mAreaCode;
    }

    public String getCity()
    {
        return mCity;
    }

    public Gender getGender()
    {
        return mGender;
    }

    public String getLatitude()
    {
        return mLatitude;
    }

    public Location getLocationInstance()
    {
        String s = mLatitude;
        Location location = null;
        if (s != null)
        {
            String s1 = mLongitude;
            location = null;
            if (s1 != null)
            {
                location = new Location("Current");
                location.setLatitude(Double.parseDouble(mLatitude));
                location.setLongitude(Double.parseDouble(mLongitude));
            }
        }
        return location;
    }

    public String getLongitude()
    {
        return mLongitude;
    }

    public String getMetro()
    {
        return mMetro;
    }

    public String getRegion()
    {
        return mRegion;
    }

    public String getZip()
    {
        return mZip;
    }

    public boolean isAllowAutoLocation()
    {
        return mAllowAutoLocation;
    }

    public void setAllowAutoLocation(boolean flag)
    {
        mAllowAutoLocation = flag;
    }

    public void setAreaCode(String s)
    {
        mAreaCode = s;
    }

    public void setCity(String s)
    {
        mCity = s;
    }

    public void setGender(Gender gender)
    {
        mGender = gender;
    }

    public void setLatitude(String s)
    {
        mLatitude = s;
    }

    public void setLongitude(String s)
    {
        mLongitude = s;
    }

    public void setMetro(String s)
    {
        mMetro = s;
    }

    public void setRegion(String s)
    {
        mRegion = s;
    }

    public void setZip(String s)
    {
        mZip = s;
    }

    public Map toMap(Context context)
    {
        HashMap hashmap = new HashMap();
        hashmap.put("areacode", mAreaCode);
        hashmap.put("zip", mZip);
        hashmap.put("city", mCity);
        hashmap.put("metro", mMetro);
        hashmap.put("region", mRegion);
        if (mGender != null)
        {
            hashmap.put("gender", mGender.toString().toLowerCase(Locale.US));
        }
        String s = mLatitude;
        String s1 = mLongitude;
        if (mAllowAutoLocation && mLatitude == null && mLongitude == null && context != null)
        {
            Location location = Utils.getLocation(context);
            if (location != null)
            {
                s = String.valueOf(location.getLatitude());
                s1 = String.valueOf(location.getLongitude());
            }
        }
        hashmap.put("lat", s);
        hashmap.put("long", s1);
        return hashmap;
    }

    private class Gender extends Enum
    {

        private static final Gender $VALUES[];
        public static final Gender FEMALE;
        public static final Gender MALE;
        public static final Gender UNKNOWN;

        public static Gender valueOf(String s)
        {
            return (Gender)Enum.valueOf(com/lifestreet/android/lsmsdk/SlotTargeting$Gender, s);
        }

        public static Gender[] values()
        {
            return (Gender[])$VALUES.clone();
        }

        static 
        {
            MALE = new Gender("MALE", 0);
            FEMALE = new Gender("FEMALE", 1);
            UNKNOWN = new Gender("UNKNOWN", 2);
            Gender agender[] = new Gender[3];
            agender[0] = MALE;
            agender[1] = FEMALE;
            agender[2] = UNKNOWN;
            $VALUES = agender;
        }

        private Gender(String s, int i)
        {
            super(s, i);
        }
    }

}
