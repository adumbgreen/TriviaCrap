// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.h.a;


public final class e extends Enum
{

    public static final e a;
    public static final e b;
    public static final e c;
    public static final e d;
    public static final e e;
    public static final e f;
    public static final e g;
    private static final e h[];

    private e(String s, int i)
    {
        super(s, i);
    }

    public static e valueOf(String s)
    {
        return (e)Enum.valueOf(com/etermax/gamescommon/h/a/e, s);
    }

    public static e[] values()
    {
        return (e[])h.clone();
    }

    static 
    {
        a = new e("SUGGESTED_FRIENDS", 0);
        b = new e("RECENT_FRIENDS", 1);
        c = new e("FAVORITES_FRIENDS", 2);
        d = new e("SEARCH_FRIENDS", 3);
        e = new e("INVITE_TO_PLAY", 4);
        f = new e("FACEBOOK_FRIENDS_PLAYING", 5);
        g = new e("FACEBOOK_INVITE_TO_PLAY", 6);
        e ae[] = new e[7];
        ae[0] = a;
        ae[1] = b;
        ae[2] = c;
        ae[3] = d;
        ae[4] = e;
        ae[5] = f;
        ae[6] = g;
        h = ae;
    }
}
