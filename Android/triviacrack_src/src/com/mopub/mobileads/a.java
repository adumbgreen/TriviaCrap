// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;


final class a extends Enum
{

    public static final a FAILED;
    public static final a FINISHED;
    public static final a GOING_LEFT;
    public static final a GOING_RIGHT;
    public static final a UNSET;
    private static final a a[];

    private a(String s, int i)
    {
        super(s, i);
    }

    public static a valueOf(String s)
    {
        return (a)Enum.valueOf(com/mopub/mobileads/a, s);
    }

    public static a[] values()
    {
        return (a[])a.clone();
    }

    static 
    {
        UNSET = new a("UNSET", 0);
        GOING_RIGHT = new a("GOING_RIGHT", 1);
        GOING_LEFT = new a("GOING_LEFT", 2);
        FINISHED = new a("FINISHED", 3);
        FAILED = new a("FAILED", 4);
        a aa[] = new a[5];
        aa[0] = UNSET;
        aa[1] = GOING_RIGHT;
        aa[2] = GOING_LEFT;
        aa[3] = FINISHED;
        aa[4] = FAILED;
        a = aa;
    }
}
