// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.common.event;


final class c extends Enum
{

    public static final c CANCELLED;
    public static final c STOPPED;
    public static final c WAITING;
    private static final c a[];

    private c(String s, int i)
    {
        super(s, i);
    }

    public static c valueOf(String s)
    {
        return (c)Enum.valueOf(com/mopub/common/event/c, s);
    }

    public static c[] values()
    {
        return (c[])a.clone();
    }

    static 
    {
        WAITING = new c("WAITING", 0);
        STOPPED = new c("STOPPED", 1);
        CANCELLED = new c("CANCELLED", 2);
        c ac[] = new c[3];
        ac[0] = WAITING;
        ac[1] = STOPPED;
        ac[2] = CANCELLED;
        a = ac;
    }
}
