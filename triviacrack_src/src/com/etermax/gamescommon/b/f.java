// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.b;


public final class f extends Enum
{

    public static final f a;
    public static final f b;
    public static final f c;
    public static final f d;
    private static final f f[];
    String e;

    private f(String s, int i, String s1)
    {
        super(s, i);
        e = s1;
    }

    public static f valueOf(String s)
    {
        return (f)Enum.valueOf(com/etermax/gamescommon/b/f, s);
    }

    public static f[] values()
    {
        return (f[])f.clone();
    }

    public String toString()
    {
        return e;
    }

    static 
    {
        a = new f("ADD_FRIEND", 0, "add_friend");
        b = new f("BLOCK_USER", 1, "block_user");
        c = new f("DELETE_CHAT", 2, "delete_chat");
        d = new f("CANCEL", 3, "cancel");
        f af[] = new f[4];
        af[0] = a;
        af[1] = b;
        af[2] = c;
        af[3] = d;
        f = af;
    }
}
