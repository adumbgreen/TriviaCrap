// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.common;


public final class  extends Enum
{

    public static final a DISABLED;
    public static final a NORMAL;
    public static final a TRUNCATED;
    private static final a a[];

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/mopub/common/MoPub$LocationAwareness, s);
    }

    public static [] values()
    {
        return ([])a.clone();
    }

    static 
    {
        NORMAL = new <init>("NORMAL", 0);
        TRUNCATED = new <init>("TRUNCATED", 1);
        DISABLED = new <init>("DISABLED", 2);
        s_3B_.clone aclone[] = new <init>[3];
        aclone[0] = NORMAL;
        aclone[1] = TRUNCATED;
        aclone[2] = DISABLED;
        a = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
