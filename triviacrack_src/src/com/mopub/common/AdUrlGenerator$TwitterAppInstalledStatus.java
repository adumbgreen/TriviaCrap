// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.common;


public final class  extends Enum
{

    public static final a INSTALLED;
    public static final a NOT_INSTALLED;
    public static final a UNKNOWN;
    private static final a a[];

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/mopub/common/AdUrlGenerator$TwitterAppInstalledStatus, s);
    }

    public static [] values()
    {
        return ([])a.clone();
    }

    static 
    {
        UNKNOWN = new <init>("UNKNOWN", 0);
        NOT_INSTALLED = new <init>("NOT_INSTALLED", 1);
        INSTALLED = new <init>("INSTALLED", 2);
        s_3B_.clone aclone[] = new <init>[3];
        aclone[0] = UNKNOWN;
        aclone[1] = NOT_INSTALLED;
        aclone[2] = INSTALLED;
        a = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
