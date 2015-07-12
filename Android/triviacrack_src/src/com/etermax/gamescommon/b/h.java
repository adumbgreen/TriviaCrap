// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.b;


public final class h extends Enum
{

    public static final h a;
    public static final h b;
    public static final h c;
    public static final h d;
    private static final h f[];
    String e;

    private h(String s, int i, String s1)
    {
        super(s, i);
        e = s1;
    }

    public static h valueOf(String s)
    {
        return (h)Enum.valueOf(com/etermax/gamescommon/b/h, s);
    }

    public static h[] values()
    {
        return (h[])f.clone();
    }

    public String toString()
    {
        return e;
    }

    static 
    {
        a = new h("CHAT_MESSAGE", 0, "chat_message");
        b = new h("CHAT_OPEN", 1, "chat_open");
        c = new h("CHAT_MORE_ACTIONS", 2, "chat_more_actions");
        d = new h("CHAT_LOAD_EARLIER", 3, "chat_load_earlier");
        h ah[] = new h[4];
        ah[0] = a;
        ah[1] = b;
        ah[2] = c;
        ah[3] = d;
        f = ah;
    }
}
