// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.login.datasource.dto;


public final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES INVITED;
    public static final .VALUES INVITING;
    public static final .VALUES NOT_INVITED;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/etermax/gamescommon/login/datasource/dto/UserDTO$InvitationStatus, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        INVITED = new <init>("INVITED", 0);
        NOT_INVITED = new <init>("NOT_INVITED", 1);
        INVITING = new <init>("INVITING", 2);
        s_3B_.clone aclone[] = new <init>[3];
        aclone[0] = INVITED;
        aclone[1] = NOT_INVITED;
        aclone[2] = INVITING;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
