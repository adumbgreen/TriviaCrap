// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.gifting.dto;


public final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES EXTRA_SHOT;
    public static final .VALUES LIFE;
    public static final .VALUES TICKET;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/etermax/gamescommon/gifting/dto/GiftItemDTO$GiftType, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        TICKET = new <init>("TICKET", 0);
        EXTRA_SHOT = new <init>("EXTRA_SHOT", 1);
        LIFE = new <init>("LIFE", 2);
        e_3B_.clone aclone[] = new <init>[3];
        aclone[0] = TICKET;
        aclone[1] = EXTRA_SHOT;
        aclone[2] = LIFE;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
