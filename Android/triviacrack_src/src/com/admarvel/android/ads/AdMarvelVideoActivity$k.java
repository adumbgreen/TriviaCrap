// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;


public final class  extends Enum
{

    public static final h a;
    public static final h b;
    public static final h c;
    public static final h d;
    public static final h e;
    public static final h f;
    public static final h g;
    private static final h h[];

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/admarvel/android/ads/AdMarvelVideoActivity$k, s);
    }

    public static [] values()
    {
        return ([])h.clone();
    }

    static 
    {
        a = new <init>("Loading", 0);
        b = new <init>("Playing", 1);
        c = new <init>("Paused", 2);
        d = new <init>("Stopped", 3);
        e = new <init>("Finished", 4);
        f = new <init>("PausedByToolbar", 5);
        g = new <init>("PausedBySystem", 6);
        k_3B_.clone aclone[] = new <init>[7];
        aclone[0] = a;
        aclone[1] = b;
        aclone[2] = c;
        aclone[3] = d;
        aclone[4] = e;
        aclone[5] = f;
        aclone[6] = g;
        h = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
