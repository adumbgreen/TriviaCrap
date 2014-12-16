// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.promotion;


public final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES ASCENDING;
    public static final .VALUES DESCENDING;
    public static final .VALUES NONE;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/etermax/gamescommon/promotion/BasePromotionFragment$Sort, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        NONE = new <init>("NONE", 0);
        ASCENDING = new <init>("ASCENDING", 1);
        DESCENDING = new <init>("DESCENDING", 2);
        t_3B_.clone aclone[] = new <init>[3];
        aclone[0] = NONE;
        aclone[1] = ASCENDING;
        aclone[2] = DESCENDING;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
