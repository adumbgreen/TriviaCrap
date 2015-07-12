// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.b;


public final class an extends Enum
{

    public static final an a;
    public static final an b;
    public static final an c;
    public static final an d;
    public static final an e;
    public static final an f;
    public static final an g;
    public static final an h;
    public static final an i;
    public static final an j;
    public static final an k;
    public static final an l;
    public static final an m;
    private static final an o[];
    private String n;

    private an(String s, int i1, String s1)
    {
        super(s, i1);
        n = s1;
    }

    public static an valueOf(String s)
    {
        return (an)Enum.valueOf(com/etermax/gamescommon/b/an, s);
    }

    public static an[] values()
    {
        return (an[])o.clone();
    }

    public String toString()
    {
        return n;
    }

    static 
    {
        a = new an("MENU", 0, "menu");
        b = new an("DASHBOARD", 1, "dashboard");
        c = new an("MESSAGING_PANEL", 2, "messaging_panel");
        d = new an("FRIENDS_LIST", 3, "friendlist");
        e = new an("GAME_BOARD", 4, "board");
        f = new an("BLOCKED_LIST", 5, "blocklist");
        g = new an("SEARCH", 6, "search");
        h = new an("GAME_SCORE", 7, "game_score");
        i = new an("ROUND_SCORE", 8, "round_score");
        j = new an("FRIENDS_PANEL", 9, "mp_swipe");
        k = new an("DUEL_RESULT", 10, "duel_result");
        l = new an("RANKINGS", 11, "rankings");
        m = new an("NOTIFICATION", 12, "notification");
        an aan[] = new an[13];
        aan[0] = a;
        aan[1] = b;
        aan[2] = c;
        aan[3] = d;
        aan[4] = e;
        aan[5] = f;
        aan[6] = g;
        aan[7] = h;
        aan[8] = i;
        aan[9] = j;
        aan[10] = k;
        aan[11] = l;
        aan[12] = m;
        o = aan;
    }
}
