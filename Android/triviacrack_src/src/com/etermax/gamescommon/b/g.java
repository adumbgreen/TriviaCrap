// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.b;


public final class g extends Enum
{

    public static final g a;
    public static final g b;
    public static final g c;
    public static final g d;
    public static final g e;
    public static final g f;
    public static final g g;
    public static final g h;
    public static final g i;
    private static final g k[];
    String j;

    private g(String s, int l, String s1)
    {
        super(s, l);
        j = s1;
    }

    public static g valueOf(String s)
    {
        return (g)Enum.valueOf(com/etermax/gamescommon/b/g, s);
    }

    public static g[] values()
    {
        return (g[])k.clone();
    }

    public String toString()
    {
        return j;
    }

    static 
    {
        a = new g("DASHBOARD", 0, "dashboard");
        b = new g("GAME", 1, "game");
        c = new g("CHAT_HEADER", 2, "chat_headers");
        d = new g("PROFILE_BUTTON", 3, "profile_button");
        e = new g("FRIEND_LIST", 4, "friend_list");
        f = new g("GAME_SCORE", 5, "game_score");
        g = new g("FRIENDS_PANEL", 6, "mp_swipe");
        h = new g("ROUND_SCORE", 7, "round_score");
        i = new g("NOTIFICATION", 8, "notification");
        g ag[] = new g[9];
        ag[0] = a;
        ag[1] = b;
        ag[2] = c;
        ag[3] = d;
        ag[4] = e;
        ag[5] = f;
        ag[6] = g;
        ag[7] = h;
        ag[8] = i;
        k = ag;
    }
}
