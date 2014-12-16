// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;


public final class _cls9 extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES ADCOLONY;
    public static final .VALUES ADMARVEL;
    public static final .VALUES AMAZON;
    public static final .VALUES FACEBOOK;
    public static final .VALUES GOOGLEPLAY;
    public static final .VALUES GREYSTRIPE;
    public static final .VALUES HEYZAP;
    public static final .VALUES INMOBI;
    public static final .VALUES MILLENNIAL;
    public static final .VALUES PULSE3D;
    public static final .VALUES RHYTHM;

    public static _cls9 valueOf(String s)
    {
        return (_cls9)Enum.valueOf(com/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork, s);
    }

    public static _cls9[] values()
    {
        return (_cls9[])$VALUES.clone();
    }

    static 
    {
        GREYSTRIPE = new <init>("GREYSTRIPE", 0);
        RHYTHM = new <init>("RHYTHM", 1);
        MILLENNIAL = new <init>("MILLENNIAL", 2);
        ADMARVEL = new <init>("ADMARVEL", 3);
        AMAZON = new <init>("AMAZON", 4);
        ADCOLONY = new <init>("ADCOLONY", 5);
        PULSE3D = new <init>("PULSE3D", 6);
        GOOGLEPLAY = new <init>("GOOGLEPLAY", 7);
        FACEBOOK = new <init>("FACEBOOK", 8);
        INMOBI = new <init>("INMOBI", 9);
        HEYZAP = new <init>("HEYZAP", 10);
        k_3B_.clone aclone[] = new <init>[11];
        aclone[0] = GREYSTRIPE;
        aclone[1] = RHYTHM;
        aclone[2] = MILLENNIAL;
        aclone[3] = ADMARVEL;
        aclone[4] = AMAZON;
        aclone[5] = ADCOLONY;
        aclone[6] = PULSE3D;
        aclone[7] = GOOGLEPLAY;
        aclone[8] = FACEBOOK;
        aclone[9] = INMOBI;
        aclone[10] = HEYZAP;
        $VALUES = aclone;
    }

    private _cls9(String s, int i)
    {
        super(s, i);
    }
}
