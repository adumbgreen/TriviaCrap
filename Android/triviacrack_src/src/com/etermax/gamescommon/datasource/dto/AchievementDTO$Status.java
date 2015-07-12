// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.datasource.dto;


public final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES ALL;
    public static final .VALUES NOT_OBTAINED;
    public static final .VALUES OBTAINED;
    public static final .VALUES PENDING;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/etermax/gamescommon/datasource/dto/AchievementDTO$Status, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        OBTAINED = new <init>("OBTAINED", 0);
        NOT_OBTAINED = new <init>("NOT_OBTAINED", 1);
        PENDING = new <init>("PENDING", 2);
        ALL = new <init>("ALL", 3);
        s_3B_.clone aclone[] = new <init>[4];
        aclone[0] = OBTAINED;
        aclone[1] = NOT_OBTAINED;
        aclone[2] = PENDING;
        aclone[3] = ALL;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
