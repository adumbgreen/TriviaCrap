// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.login.datasource.dto;


public final class A extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES FEMALE;
    public static final .VALUES MALE;

    public static A valueOf(String s)
    {
        return (A)Enum.valueOf(com/etermax/gamescommon/login/datasource/dto/UserDTO$Gender, s);
    }

    public static A[] values()
    {
        return (A[])$VALUES.clone();
    }

    static 
    {
        MALE = new <init>("MALE", 0);
        FEMALE = new <init>("FEMALE", 1);
        r_3B_.clone aclone[] = new <init>[2];
        aclone[0] = MALE;
        aclone[1] = FEMALE;
        $VALUES = aclone;
    }

    private A(String s, int i)
    {
        super(s, i);
    }
}
