// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;


public final class  extends Enum
{

    public static final g a;
    public static final g b;
    public static final g c;
    public static final g d;
    public static final g e;
    public static final g f;
    private static final g g[];

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/admarvel/android/ads/AdMarvelVideoActivity$l, s);
    }

    public static [] values()
    {
        return ([])g.clone();
    }

    static 
    {
        a = new <init>("START", 0);
        b = new <init>("COMPLETE", 1);
        c = new <init>("PAUSE", 2);
        d = new <init>("RESUME", 3);
        e = new <init>("CLOSE", 4);
        f = new <init>("STOP", 5);
        l_3B_.clone aclone[] = new <init>[6];
        aclone[0] = a;
        aclone[1] = b;
        aclone[2] = c;
        aclone[3] = d;
        aclone[4] = e;
        aclone[5] = f;
        g = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
