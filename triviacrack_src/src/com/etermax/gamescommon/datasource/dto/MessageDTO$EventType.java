// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.datasource.dto;


public final class A extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES CHAT;
    public static final .VALUES GAME_ENDED;
    public static final .VALUES GAME_STARTED;

    public static A get(String s)
    {
        if (s.equals(GAME_ENDED.toString()))
        {
            return GAME_ENDED;
        }
        if (s.equals(GAME_STARTED.toString()))
        {
            return GAME_STARTED;
        } else
        {
            return CHAT;
        }
    }

    public static CHAT valueOf(String s)
    {
        return (CHAT)Enum.valueOf(com/etermax/gamescommon/datasource/dto/MessageDTO$EventType, s);
    }

    public static CHAT[] values()
    {
        return (CHAT[])$VALUES.clone();
    }

    static 
    {
        CHAT = new <init>("CHAT", 0);
        GAME_STARTED = new <init>("GAME_STARTED", 1);
        GAME_ENDED = new <init>("GAME_ENDED", 2);
        e_3B_.clone aclone[] = new <init>[3];
        aclone[0] = CHAT;
        aclone[1] = GAME_STARTED;
        aclone[2] = GAME_ENDED;
        $VALUES = aclone;
    }

    private A(String s, int i)
    {
        super(s, i);
    }
}
