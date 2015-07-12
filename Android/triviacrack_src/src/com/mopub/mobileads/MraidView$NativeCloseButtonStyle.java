// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;


public final class  extends Enum
{

    public static final a AD_CONTROLLED;
    public static final a ALWAYS_HIDDEN;
    public static final a ALWAYS_VISIBLE;
    private static final a a[];

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/mopub/mobileads/MraidView$NativeCloseButtonStyle, s);
    }

    public static [] values()
    {
        return ([])a.clone();
    }

    static 
    {
        ALWAYS_VISIBLE = new <init>("ALWAYS_VISIBLE", 0);
        ALWAYS_HIDDEN = new <init>("ALWAYS_HIDDEN", 1);
        AD_CONTROLLED = new <init>("AD_CONTROLLED", 2);
        e_3B_.clone aclone[] = new <init>[3];
        aclone[0] = ALWAYS_VISIBLE;
        aclone[1] = ALWAYS_HIDDEN;
        aclone[2] = AD_CONTROLLED;
        a = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
