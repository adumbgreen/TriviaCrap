// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.chat.a;


public final class h extends Enum
{

    public static final h a;
    public static final h b;
    public static final h c;
    public static final h d;
    public static final h e;
    private static final h f[];

    private h(String s, int i)
    {
        super(s, i);
    }

    public static h valueOf(String s)
    {
        return (h)Enum.valueOf(com/etermax/chat/a/h, s);
    }

    public static h[] values()
    {
        return (h[])f.clone();
    }

    static 
    {
        a = new h("SENDING", 0);
        b = new h("SENDING_ERROR", 1);
        c = new h("SENT_UNREAD", 2);
        d = new h("SENT_READED", 3);
        e = new h("RECEIVED", 4);
        h ah[] = new h[5];
        ah[0] = a;
        ah[1] = b;
        ah[2] = c;
        ah[3] = d;
        ah[4] = e;
        f = ah;
    }
}
