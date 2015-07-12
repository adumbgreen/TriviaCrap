// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;


public final class  extends Enum
{

    public static final c a;
    public static final c b;
    private static final c c[];

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/admarvel/android/ads/a$a, s);
    }

    public static [] values()
    {
        return ([])c.clone();
    }

    static 
    {
        a = new <init>("BANNER", 0);
        b = new <init>("INTERSTITIAL", 1);
        lone alone[] = new <init>[2];
        alone[0] = a;
        alone[1] = b;
        c = alone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
