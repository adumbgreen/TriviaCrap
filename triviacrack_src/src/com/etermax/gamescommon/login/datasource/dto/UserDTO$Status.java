// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.login.datasource.dto;


public final class A extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES IDLE;
    public static final .VALUES OFFLINE;
    public static final .VALUES ONLINE;

    public static A valueOf(String s)
    {
        return (A)Enum.valueOf(com/etermax/gamescommon/login/datasource/dto/UserDTO$Status, s);
    }

    public static A[] values()
    {
        return (A[])$VALUES.clone();
    }

    static 
    {
        ONLINE = new <init>("ONLINE", 0);
        OFFLINE = new <init>("OFFLINE", 1);
        IDLE = new <init>("IDLE", 2);
        s_3B_.clone aclone[] = new <init>[3];
        aclone[0] = ONLINE;
        aclone[1] = OFFLINE;
        aclone[2] = IDLE;
        $VALUES = aclone;
    }

    private A(String s, int i)
    {
        super(s, i);
    }
}
