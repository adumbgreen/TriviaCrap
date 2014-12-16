// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.gifting.dto;


public final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES READ;
    public static final .VALUES UNREAD;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/etermax/gamescommon/gifting/dto/GiftsDTO$GiftState, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        READ = new <init>("READ", 0);
        UNREAD = new <init>("UNREAD", 1);
        e_3B_.clone aclone[] = new <init>[2];
        aclone[0] = READ;
        aclone[1] = UNREAD;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
