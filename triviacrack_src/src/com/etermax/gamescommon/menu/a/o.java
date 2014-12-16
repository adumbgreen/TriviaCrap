// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.menu.a;


public final class o extends Enum
{

    public static final o a;
    public static final o b;
    public static final o c;
    private static final o e[];
    private final int d;

    private o(String s, int i, int j)
    {
        super(s, i);
        d = j;
    }

    public static o valueOf(String s)
    {
        return (o)Enum.valueOf(com/etermax/gamescommon/menu/a/o, s);
    }

    public static o[] values()
    {
        return (o[])e.clone();
    }

    public int a()
    {
        return d;
    }

    static 
    {
        a = new o("CHATS", 0, com.etermax.o.chat_plural);
        b = new o("FRIENDS", 1, com.etermax.o.friend_plural);
        c = new o("SUGGESTED", 2, com.etermax.o.suggested);
        o ao[] = new o[3];
        ao[0] = a;
        ao[1] = b;
        ao[2] = c;
        e = ao;
    }
}
