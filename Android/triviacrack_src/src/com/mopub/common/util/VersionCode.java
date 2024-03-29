// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.common.util;


public final class VersionCode extends Enum
{

    public static final VersionCode BASE;
    public static final VersionCode BASE_1_1;
    public static final VersionCode CUPCAKE;
    public static final VersionCode CUR_DEVELOPMENT;
    public static final VersionCode DONUT;
    public static final VersionCode ECLAIR;
    public static final VersionCode ECLAIR_0_1;
    public static final VersionCode ECLAIR_MR1;
    public static final VersionCode FROYO;
    public static final VersionCode GINGERBREAD;
    public static final VersionCode GINGERBREAD_MR1;
    public static final VersionCode HONEYCOMB;
    public static final VersionCode HONEYCOMB_MR1;
    public static final VersionCode HONEYCOMB_MR2;
    public static final VersionCode ICE_CREAM_SANDWICH;
    public static final VersionCode ICE_CREAM_SANDWICH_MR1;
    public static final VersionCode JELLY_BEAN;
    public static final VersionCode JELLY_BEAN_MR1;
    public static final VersionCode JELLY_BEAN_MR2;
    public static final VersionCode KITKAT;
    private static final VersionCode b[];
    private int a;

    private VersionCode(String s, int i, int j)
    {
        super(s, i);
        a = j;
    }

    private static VersionCode a(int i)
    {
        VersionCode aversioncode[] = values();
        int j = aversioncode.length;
        for (int k = 0; k < j; k++)
        {
            VersionCode versioncode = aversioncode[k];
            if (versioncode.getApiLevel() == i)
            {
                return versioncode;
            }
        }

        return CUR_DEVELOPMENT;
    }

    public static VersionCode currentApiLevel()
    {
        return a(android.os.Build.VERSION.SDK_INT);
    }

    public static VersionCode valueOf(String s)
    {
        return (VersionCode)Enum.valueOf(com/mopub/common/util/VersionCode, s);
    }

    public static VersionCode[] values()
    {
        return (VersionCode[])b.clone();
    }

    public int getApiLevel()
    {
        return a;
    }

    public boolean isAtLeast(VersionCode versioncode)
    {
        return getApiLevel() >= versioncode.getApiLevel();
    }

    public boolean isAtMost(VersionCode versioncode)
    {
        return getApiLevel() <= versioncode.getApiLevel();
    }

    public boolean isBelow(VersionCode versioncode)
    {
        return getApiLevel() < versioncode.getApiLevel();
    }

    static 
    {
        BASE = new VersionCode("BASE", 0, 1);
        BASE_1_1 = new VersionCode("BASE_1_1", 1, 2);
        CUPCAKE = new VersionCode("CUPCAKE", 2, 3);
        DONUT = new VersionCode("DONUT", 3, 4);
        ECLAIR = new VersionCode("ECLAIR", 4, 5);
        ECLAIR_0_1 = new VersionCode("ECLAIR_0_1", 5, 6);
        ECLAIR_MR1 = new VersionCode("ECLAIR_MR1", 6, 7);
        FROYO = new VersionCode("FROYO", 7, 8);
        GINGERBREAD = new VersionCode("GINGERBREAD", 8, 9);
        GINGERBREAD_MR1 = new VersionCode("GINGERBREAD_MR1", 9, 10);
        HONEYCOMB = new VersionCode("HONEYCOMB", 10, 11);
        HONEYCOMB_MR1 = new VersionCode("HONEYCOMB_MR1", 11, 12);
        HONEYCOMB_MR2 = new VersionCode("HONEYCOMB_MR2", 12, 13);
        ICE_CREAM_SANDWICH = new VersionCode("ICE_CREAM_SANDWICH", 13, 14);
        ICE_CREAM_SANDWICH_MR1 = new VersionCode("ICE_CREAM_SANDWICH_MR1", 14, 15);
        JELLY_BEAN = new VersionCode("JELLY_BEAN", 15, 16);
        JELLY_BEAN_MR1 = new VersionCode("JELLY_BEAN_MR1", 16, 17);
        JELLY_BEAN_MR2 = new VersionCode("JELLY_BEAN_MR2", 17, 18);
        KITKAT = new VersionCode("KITKAT", 18, 19);
        CUR_DEVELOPMENT = new VersionCode("CUR_DEVELOPMENT", 19, 10000);
        VersionCode aversioncode[] = new VersionCode[20];
        aversioncode[0] = BASE;
        aversioncode[1] = BASE_1_1;
        aversioncode[2] = CUPCAKE;
        aversioncode[3] = DONUT;
        aversioncode[4] = ECLAIR;
        aversioncode[5] = ECLAIR_0_1;
        aversioncode[6] = ECLAIR_MR1;
        aversioncode[7] = FROYO;
        aversioncode[8] = GINGERBREAD;
        aversioncode[9] = GINGERBREAD_MR1;
        aversioncode[10] = HONEYCOMB;
        aversioncode[11] = HONEYCOMB_MR1;
        aversioncode[12] = HONEYCOMB_MR2;
        aversioncode[13] = ICE_CREAM_SANDWICH;
        aversioncode[14] = ICE_CREAM_SANDWICH_MR1;
        aversioncode[15] = JELLY_BEAN;
        aversioncode[16] = JELLY_BEAN_MR1;
        aversioncode[17] = JELLY_BEAN_MR2;
        aversioncode[18] = KITKAT;
        aversioncode[19] = CUR_DEVELOPMENT;
        b = aversioncode;
    }
}
