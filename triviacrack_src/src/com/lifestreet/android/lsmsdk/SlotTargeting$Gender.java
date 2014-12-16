// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.lifestreet.android.lsmsdk;


public final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES FEMALE;
    public static final .VALUES MALE;
    public static final .VALUES UNKNOWN;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/lifestreet/android/lsmsdk/SlotTargeting$Gender, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        MALE = new <init>("MALE", 0);
        FEMALE = new <init>("FEMALE", 1);
        UNKNOWN = new <init>("UNKNOWN", 2);
        r_3B_.clone aclone[] = new <init>[3];
        aclone[0] = MALE;
        aclone[1] = FEMALE;
        aclone[2] = UNKNOWN;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
