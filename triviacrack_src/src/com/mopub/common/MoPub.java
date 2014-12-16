// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.common;


public class MoPub
{

    public static final String SDK_VERSION = "3.2.2";
    private static volatile LocationAwareness a;
    private static volatile int b = 6;

    public MoPub()
    {
    }

    public static LocationAwareness getLocationAwareness()
    {
        return a;
    }

    public static int getLocationPrecision()
    {
        return b;
    }

    public static void setLocationAwareness(LocationAwareness locationawareness)
    {
        a = locationawareness;
    }

    public static void setLocationPrecision(int i)
    {
        b = Math.min(Math.max(0, i), 6);
    }

    static 
    {
        a = LocationAwareness.NORMAL;
    }

    private class LocationAwareness extends Enum
    {

        public static final LocationAwareness DISABLED;
        public static final LocationAwareness NORMAL;
        public static final LocationAwareness TRUNCATED;
        private static final LocationAwareness a[];

        public static LocationAwareness valueOf(String s)
        {
            return (LocationAwareness)Enum.valueOf(com/mopub/common/MoPub$LocationAwareness, s);
        }

        public static LocationAwareness[] values()
        {
            return (LocationAwareness[])a.clone();
        }

        static 
        {
            NORMAL = new LocationAwareness("NORMAL", 0);
            TRUNCATED = new LocationAwareness("TRUNCATED", 1);
            DISABLED = new LocationAwareness("DISABLED", 2);
            LocationAwareness alocationawareness[] = new LocationAwareness[3];
            alocationawareness[0] = NORMAL;
            alocationawareness[1] = TRUNCATED;
            alocationawareness[2] = DISABLED;
            a = alocationawareness;
        }

        private LocationAwareness(String s, int i)
        {
            super(s, i);
        }
    }

}
