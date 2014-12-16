// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;


public final class  extends Enum
{

    public static final a DEFAULT;
    public static final a EXPANDED;
    public static final a HIDDEN;
    public static final a LOADING;
    private static final a a[];

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/mopub/mobileads/MraidView$ViewState, s);
    }

    public static [] values()
    {
        return ([])a.clone();
    }

    static 
    {
        LOADING = new <init>("LOADING", 0);
        DEFAULT = new <init>("DEFAULT", 1);
        EXPANDED = new <init>("EXPANDED", 2);
        HIDDEN = new <init>("HIDDEN", 3);
        e_3B_.clone aclone[] = new <init>[4];
        aclone[0] = LOADING;
        aclone[1] = DEFAULT;
        aclone[2] = EXPANDED;
        aclone[3] = HIDDEN;
        a = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
