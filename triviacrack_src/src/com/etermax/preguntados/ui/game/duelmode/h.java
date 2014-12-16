// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.game.duelmode;

import android.content.Context;
import android.content.res.Resources;
import com.etermax.j;
import com.etermax.m;
import com.etermax.o;
import com.etermax.preguntados.c.a.e;
import com.etermax.preguntados.datasource.dto.enums.QuestionCategory;
import com.etermax.preguntados.g.a;

// Referenced classes of package com.etermax.preguntados.ui.game.duelmode:
//            g

public final class h extends Enum
{

    public static final h a;
    private static final h t[];
    private g b;
    private int c;
    private int d;
    private int e;
    private int f;
    private int g;
    private int h;
    private int i;
    private int j;
    private int k;
    private String l;
    private int m;
    private String n;
    private int o;
    private int p;
    private int q;
    private int r;
    private int s;

    private h(String s1, int i1, g g1, int j1, int k1, int l1, int i2, 
            int j2, int k2, int l2, int i3, int j3, String s2, int k3, 
            String s3, int l3, int i4, int j4, int k4, int l4)
    {
        super(s1, i1);
        b = g1;
        c = j1;
        d = k1;
        e = l1;
        f = i2;
        g = j2;
        h = k2;
        i = l2;
        j = i3;
        k = j3;
        l = s2;
        m = k3;
        n = s3;
        o = l3;
        p = i4;
        q = j4;
        r = k4;
        s = l4;
    }

    public static h a(g g1)
    {
        if (g1 != null)
        {
            return a(g1.name());
        } else
        {
            return m();
        }
    }

    public static h a(String s1)
    {
        h ah[] = values();
        int i1 = ah.length;
        for (int j1 = 0; j1 < i1; j1++)
        {
            h h1 = ah[j1];
            if (h1.a().name().equals(s1))
            {
                return h1;
            }
        }

        return m();
    }

    private static h m()
    {
        return a;
    }

    public static h valueOf(String s1)
    {
        return (h)Enum.valueOf(com/etermax/preguntados/ui/game/duelmode/h, s1);
    }

    public static h[] values()
    {
        return (h[])t.clone();
    }

    public int a(Context context, long l1)
    {
        long l2 = 1L + Math.abs(l1) % (long)context.getResources().getInteger(m);
        return context.getResources().getIdentifier((new StringBuilder()).append(l).append(l2).toString(), "drawable", context.getPackageName());
    }

    public int a(e e1, QuestionCategory questioncategory)
    {
        int i1;
        if (i != 0)
        {
            i1 = i;
        } else
        {
            i1 = e1.b(questioncategory);
            if (i1 == -1)
            {
                return 0;
            }
        }
        return i1;
    }

    public g a()
    {
        return b;
    }

    public int b()
    {
        return c;
    }

    public int b(Context context, long l1)
    {
        long l2 = 1L + Math.abs(l1) % (long)context.getResources().getInteger(o);
        return context.getResources().getIdentifier((new StringBuilder()).append(n).append(l2).toString(), "drawable", context.getPackageName());
    }

    public int c()
    {
        return d;
    }

    public int d()
    {
        return e;
    }

    public int e()
    {
        return f;
    }

    public int f()
    {
        return g;
    }

    public int g()
    {
        return j;
    }

    public int h()
    {
        return k;
    }

    public int i()
    {
        return p;
    }

    public int j()
    {
        return q;
    }

    public int k()
    {
        return r;
    }

    public int l()
    {
        return s;
    }

    static 
    {
        a = new h("NORMAL", 0, com.etermax.preguntados.ui.game.duelmode.g.a, com.etermax.h.icon_duelo_dashboard, com.etermax.h.background_challenge, com.etermax.h.won_challenge, com.etermax.h.lost_challenge, com.etermax.h.time_challenge, 0, 0, o.group_challenge, o.suggested_title_group_challenge, "duelo_0", j.avatar_duel_challenge_count, "avatar_challenge_", j.avatar_count, a.E, a.F, m.user_won_group_challenge, m.user_lost_group_challenge);
        h ah[] = new h[1];
        ah[0] = a;
        t = ah;
    }
}
