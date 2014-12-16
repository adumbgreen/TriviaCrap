// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.admob.millennial;


public final class description extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES BISEXUAL;
    public static final .VALUES GAY;
    public static final .VALUES NOT_SURE;
    public static final .VALUES STRAIGHT;
    private final String description;

    public static description valueOf(String s)
    {
        return (description)Enum.valueOf(com/etermax/admob/millennial/MillennialAdapterExtras$Orientation, s);
    }

    public static description[] values()
    {
        return (description[])$VALUES.clone();
    }

    static 
    {
        STRAIGHT = new <init>("STRAIGHT", 0, "straight");
        GAY = new <init>("GAY", 1, "gay");
        BISEXUAL = new <init>("BISEXUAL", 2, "bisexual");
        NOT_SURE = new <init>("NOT_SURE", 3, "notsure");
        n_3B_.clone aclone[] = new <init>[4];
        aclone[0] = STRAIGHT;
        aclone[1] = GAY;
        aclone[2] = BISEXUAL;
        aclone[3] = NOT_SURE;
        $VALUES = aclone;
    }

    private (String s, int i, String s1)
    {
        super(s, i);
        description = s1;
    }
}
