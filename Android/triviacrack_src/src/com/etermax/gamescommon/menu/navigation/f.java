// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.menu.navigation;

import com.etermax.h;
import com.etermax.o;

public final class f extends Enum
{

    public static final f a;
    public static final f b;
    public static final f c;
    public static final f d;
    public static final f e;
    public static final f f;
    public static final f g;
    public static final f h;
    public static final f i;
    public static final f j;
    public static final f k;
    public static final f l;
    public static final f m;
    public static final f n;
    public static final f o;
    public static final f p;
    private static final f s[];
    private int q;
    private int r;

    private f(String s1, int i1, int j1, int k1)
    {
        super(s1, i1);
        q = j1;
        r = k1;
    }

    public static f valueOf(String s1)
    {
        return (f)Enum.valueOf(com/etermax/gamescommon/menu/navigation/f, s1);
    }

    public static f[] values()
    {
        return (f[])s.clone();
    }

    public int a()
    {
        return q;
    }

    public int b()
    {
        return r;
    }

    public boolean c()
    {
        return q != -1;
    }

    public boolean d()
    {
        return r != -1;
    }

    static 
    {
        a = new f("PROFILE", 0, o.profile, h.dashboard_user);
        b = new f("SETTINGS", 1, o.settings, h.dashboard_settings);
        c = new f("HELP", 2, o.help, h.dashboard_help);
        d = new f("SHOP", 3, o.shop, h.dashboard_shop);
        e = new f("FACEBOOK", 4, o.facebook, h.dashboard_facebook);
        f = new f("TWITTER", 5, o.twitter, h.dashboard_twitter);
        g = new f("INBOX", 6, o.inbox, h.dashboard_notifications);
        h = new f("BUY_PRO", 7, o.buy_version, h.dashboard_pro_version);
        i = new f("ACHIEVEMENTS", 8, o.player_achievements, h.dashboard_achievements);
        j = new f("COUPON", 9, -1, -1);
        k = new f("HEADER", 10, o.other_games, -1);
        l = new f("APP", 11, -1, -1);
        m = new f("SUGGEST_QUESTION", 12, -1, -1);
        n = new f("QUESTIONS_FACTORY", 13, -1, -1);
        o = new f("MY_TEAM", 14, -1, -1);
        p = new f("RANKINGS", 15, -1, -1);
        f af[] = new f[16];
        af[0] = a;
        af[1] = b;
        af[2] = c;
        af[3] = d;
        af[4] = e;
        af[5] = f;
        af[6] = g;
        af[7] = h;
        af[8] = i;
        af[9] = j;
        af[10] = k;
        af[11] = l;
        af[12] = m;
        af[13] = n;
        af[14] = o;
        af[15] = p;
        s = af;
    }
}
