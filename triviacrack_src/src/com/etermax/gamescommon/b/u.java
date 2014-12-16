// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.b;

import com.etermax.tools.f.a.a;
import com.etermax.tools.f.c;

public class u extends a
{

    public static String a = "friends_panel_click";
    public static String b = "friends_panel_more";
    public static String c = "friends_panel_search";

    public u(String s)
    {
        e(s);
    }

    public void a(String s)
    {
        a("section", s);
    }

    public void b(String s)
    {
        a("from", s);
    }

    public c[] b()
    {
        return P;
    }

    public void c(String s)
    {
        a("online_status", s);
    }

    public void d(String s)
    {
        a("results", s);
    }

}
