// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.version;


public final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES FORCE;
    public static final .VALUES OK;
    public static final .VALUES SUGGEST;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/etermax/gamescommon/version/VersionManager$VersionStatusType, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        OK = new <init>("OK", 0);
        FORCE = new <init>("FORCE", 1);
        SUGGEST = new <init>("SUGGEST", 2);
        e_3B_.clone aclone[] = new <init>[3];
        aclone[0] = OK;
        aclone[1] = FORCE;
        aclone[2] = SUGGEST;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
