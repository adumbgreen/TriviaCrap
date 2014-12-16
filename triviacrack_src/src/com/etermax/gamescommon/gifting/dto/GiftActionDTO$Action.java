// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.gifting.dto;


public final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES ACCEPT;
    public static final .VALUES ASK;
    public static final .VALUES SEND;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/etermax/gamescommon/gifting/dto/GiftActionDTO$Action, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        SEND = new <init>("SEND", 0);
        ASK = new <init>("ASK", 1);
        ACCEPT = new <init>("ACCEPT", 2);
        n_3B_.clone aclone[] = new <init>[3];
        aclone[0] = SEND;
        aclone[1] = ASK;
        aclone[2] = ACCEPT;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
