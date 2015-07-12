// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.datasource.dto;


public final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES EXPIRED;
    public static final .VALUES NORMAL;
    public static final .VALUES REJECTED;
    public static final .VALUES RESIGNED;

    public static  get(String s)
    {
        if (s == null)
        {
            return null;
        }
        if (s.equals(EXPIRED.toString()))
        {
            return EXPIRED;
        }
        if (s.equals(REJECTED.toString()))
        {
            return REJECTED;
        }
        if (s.equals(RESIGNED.toString()))
        {
            return RESIGNED;
        }
        if (s.equals(EXPIRED.toString()))
        {
            return EXPIRED;
        } else
        {
            return NORMAL;
        }
    }

    public static NORMAL valueOf(String s)
    {
        return (NORMAL)Enum.valueOf(com/etermax/gamescommon/datasource/dto/MessageDTO$EndedReason, s);
    }

    public static NORMAL[] values()
    {
        return (NORMAL[])$VALUES.clone();
    }

    static 
    {
        EXPIRED = new <init>("EXPIRED", 0);
        NORMAL = new <init>("NORMAL", 1);
        REJECTED = new <init>("REJECTED", 2);
        RESIGNED = new <init>("RESIGNED", 3);
        n_3B_.clone aclone[] = new <init>[4];
        aclone[0] = EXPIRED;
        aclone[1] = NORMAL;
        aclone[2] = REJECTED;
        aclone[3] = RESIGNED;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
