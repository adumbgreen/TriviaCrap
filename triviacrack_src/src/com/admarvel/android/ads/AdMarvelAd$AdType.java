// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;


public final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES CUSTOM;
    public static final .VALUES ERROR;
    public static final .VALUES IMAGE;
    public static final .VALUES JAVASCRIPT;
    public static final .VALUES SDKCALL;
    public static final .VALUES TEXT;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/admarvel/android/ads/AdMarvelAd$AdType, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        TEXT = new <init>("TEXT", 0);
        IMAGE = new <init>("IMAGE", 1);
        JAVASCRIPT = new <init>("JAVASCRIPT", 2);
        SDKCALL = new <init>("SDKCALL", 3);
        ERROR = new <init>("ERROR", 4);
        CUSTOM = new <init>("CUSTOM", 5);
        e_3B_.clone aclone[] = new <init>[6];
        aclone[0] = TEXT;
        aclone[1] = IMAGE;
        aclone[2] = JAVASCRIPT;
        aclone[3] = SDKCALL;
        aclone[4] = ERROR;
        aclone[5] = CUSTOM;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
