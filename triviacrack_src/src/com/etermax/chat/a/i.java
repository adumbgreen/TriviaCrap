// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.chat.a;


public final class i extends Enum
{

    public static final i a;
    public static final i b;
    public static final i c;
    public static final i d;
    public static final i e;
    public static final i f;
    public static final i g;
    public static final i h;
    public static final i i;
    private static final i j[];

    private i(String s, int k)
    {
        super(s, k);
    }

    public static i valueOf(String s)
    {
        return (i)Enum.valueOf(com/etermax/chat/a/i, s);
    }

    public static i[] values()
    {
        return (i[])j.clone();
    }

    static 
    {
        a = new i("TEXT", 0);
        b = new i("IMAGE", 1);
        c = new i("VIDEO", 2);
        d = new i("LOCATION", 3);
        e = new i("AUDIO", 4);
        f = new i("LINK", 5);
        g = new i("FILE", 6);
        h = new i("EVENT", 7);
        i = new i("DATE", 8);
        i ai[] = new i[9];
        ai[0] = a;
        ai[1] = b;
        ai[2] = c;
        ai[3] = d;
        ai[4] = e;
        ai[5] = f;
        ai[6] = g;
        ai[7] = h;
        ai[8] = i;
        j = ai;
    }
}
