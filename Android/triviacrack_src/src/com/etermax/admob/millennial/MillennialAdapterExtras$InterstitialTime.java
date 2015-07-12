// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.admob.millennial;


public final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES APP_LAUNCH;
    public static final .VALUES TRANSITION;
    public static final .VALUES UNKNOWN;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/etermax/admob/millennial/MillennialAdapterExtras$InterstitialTime, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        UNKNOWN = new <init>("UNKNOWN", 0);
        APP_LAUNCH = new <init>("APP_LAUNCH", 1);
        TRANSITION = new <init>("TRANSITION", 2);
        e_3B_.clone aclone[] = new <init>[3];
        aclone[0] = UNKNOWN;
        aclone[1] = APP_LAUNCH;
        aclone[2] = TRANSITION;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
