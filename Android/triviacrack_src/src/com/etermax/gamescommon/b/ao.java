// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.b;


public final class ao extends Enum
{

    public static final ao a;
    public static final ao b;
    public static final ao c;
    private static final ao e[];
    private String d;

    private ao(String s, int i, String s1)
    {
        super(s, i);
        d = s1;
    }

    public static ao valueOf(String s)
    {
        return (ao)Enum.valueOf(com/etermax/gamescommon/b/ao, s);
    }

    public static ao[] values()
    {
        return (ao[])e.clone();
    }

    public String toString()
    {
        return d;
    }

    static 
    {
        a = new ao("PROFILE_EVENT_TYPE_OWN", 0, "own");
        b = new ao("PROFILE_EVENT_TYPE_FRIEND", 1, "friend");
        c = new ao("PROFILE_EVENT_TYPE_OTHER", 2, "other");
        ao aao[] = new ao[3];
        aao[0] = a;
        aao[1] = b;
        aao[2] = c;
        e = aao;
    }
}
