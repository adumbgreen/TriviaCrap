// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.notification;


public final class h extends Enum
{

    public static final h a;
    public static final h b;
    public static final h c;
    private static final h d[];

    private h(String s, int i)
    {
        super(s, i);
    }

    public static h valueOf(String s)
    {
        return (h)Enum.valueOf(com/etermax/gamescommon/notification/h, s);
    }

    public static h[] values()
    {
        return (h[])d.clone();
    }

    static 
    {
        a = new h("NOT_STACKED", 0);
        b = new h("STACKED_SAME_INFO", 1);
        c = new h("STACKED_MULTI_INFO", 2);
        h ah[] = new h[3];
        ah[0] = a;
        ah[1] = b;
        ah[2] = c;
        d = ah;
    }
}
