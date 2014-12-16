// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon;


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
    public static final g j;
    public static final g k;
    public static final g l;
    public static final g m;
    public static final g n;
    public static final g o;
    public static final g p;
    public static final g q;
    public static final g r;
    public static final g s;
    public static final g t;
    public static final g u;
    private static final g w[];
    private String v;

    private g(String s1, int i1, String s2)
    {
        super(s1, i1);
        v = s2;
    }

    public static g valueOf(String s1)
    {
        return (g)Enum.valueOf(com/etermax/gamescommon/g, s1);
    }

    public static g[] values()
    {
        return (g[])w.clone();
    }

    public String a()
    {
        return v;
    }

    static 
    {
        a = new g("MUSIC", 0, "music");
        b = new g("EFFECTS", 1, "effects");
        c = new g("VOICE", 2, "voice");
        d = new g("SOUND", 3, "sound");
        e = new g("NOTIFICATIONS", 4, "notifications");
        f = new g("NOTIFICATIONS_SOUND", 5, "notifications_sound");
        g = new g("NOTIFICATIONS_VIBRATE", 6, "notifications_vibrate");
        h = new g("ASK_CONFIRMATION", 7, "ask_confirmation");
        i = new g("ANDROID_ID", 8, "android_id");
        j = new g("FB_SHARE", 9, "fb_share");
        k = new g("GAME_LOCALE", 10, "locale");
        l = new g("FAVORITES_ONLY", 11, "FAVORITES_ONLY");
        m = new g("DISPLAY_FACEBOOK_NAME", 12, "FB_SHOW_NAME");
        n = new g("DISPLAY_FACEBOOK_PICTURE", 13, "FB_SHOW_PICTURE");
        o = new g("MAIL_NEWS", 14, "MAIL_NEWS");
        p = new g("MAIL_GAME", 15, "MAIL_GAME");
        q = new g("MAIL_RESET_PASSWORD", 16, "MAIL_RESET_PASSWORD");
        r = new g("TOURNAMENTS", 17, "tournaments");
        s = new g("ALLOW_OG_POSTS", 18, "ALLOW_OG_POSTS");
        t = new g("LAST_ASKED_OG_PERMISSION", 19, "last_asked_og_permission");
        u = new g("REPORTED_USERS", 20, "reported_users");
        g ag[] = new g[21];
        ag[0] = a;
        ag[1] = b;
        ag[2] = c;
        ag[3] = d;
        ag[4] = e;
        ag[5] = f;
        ag[6] = g;
        ag[7] = h;
        ag[8] = i;
        ag[9] = j;
        ag[10] = k;
        ag[11] = l;
        ag[12] = m;
        ag[13] = n;
        ag[14] = o;
        ag[15] = p;
        ag[16] = q;
        ag[17] = r;
        ag[18] = s;
        ag[19] = t;
        ag[20] = u;
        w = ag;
    }
}
