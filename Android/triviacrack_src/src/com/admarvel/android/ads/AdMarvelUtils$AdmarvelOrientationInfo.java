// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;


public final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES SCREEN_ORIENTATION_CURRENT_ACTIVITY;
    public static final .VALUES SCREEN_ORIENTATION_LANDSCAPE;
    public static final .VALUES SCREEN_ORIENTATION_PORTRAIT;
    public static final .VALUES SCREEN_ORIENTATION_REVERSE_LANDSCAPE;
    public static final .VALUES SCREEN_ORIENTATION_REVERSE_PORTRAIT;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/admarvel/android/ads/AdMarvelUtils$AdmarvelOrientationInfo, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        SCREEN_ORIENTATION_CURRENT_ACTIVITY = new <init>("SCREEN_ORIENTATION_CURRENT_ACTIVITY", 0);
        SCREEN_ORIENTATION_PORTRAIT = new <init>("SCREEN_ORIENTATION_PORTRAIT", 1);
        SCREEN_ORIENTATION_LANDSCAPE = new <init>("SCREEN_ORIENTATION_LANDSCAPE", 2);
        SCREEN_ORIENTATION_REVERSE_LANDSCAPE = new <init>("SCREEN_ORIENTATION_REVERSE_LANDSCAPE", 3);
        SCREEN_ORIENTATION_REVERSE_PORTRAIT = new <init>("SCREEN_ORIENTATION_REVERSE_PORTRAIT", 4);
        o_3B_.clone aclone[] = new <init>[5];
        aclone[0] = SCREEN_ORIENTATION_CURRENT_ACTIVITY;
        aclone[1] = SCREEN_ORIENTATION_PORTRAIT;
        aclone[2] = SCREEN_ORIENTATION_LANDSCAPE;
        aclone[3] = SCREEN_ORIENTATION_REVERSE_LANDSCAPE;
        aclone[4] = SCREEN_ORIENTATION_REVERSE_PORTRAIT;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
