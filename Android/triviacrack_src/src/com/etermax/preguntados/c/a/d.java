// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.c.a;

import com.etermax.h;
import com.etermax.preguntados.b.c;

// Referenced classes of package com.etermax.preguntados.c.a:
//            f

public final class d extends Enum
    implements f
{

    public static final d a;
    public static final d b;
    public static final d c;
    public static final d d;
    public static final d e;
    public static final d f;
    private static final d m[];
    private final int g;
    private final int h;
    private final com.etermax.preguntados.b.d i;
    private final int j;
    private final int k;
    private final int l;

    private d(String s, int i1, int j1, com.etermax.preguntados.b.d d1, int k1, int l1, int i2, 
            int j2)
    {
        super(s, i1);
        g = j1;
        i = d1;
        j = k1;
        k = l1;
        l = i2;
        h = j2;
    }

    public static d a(String s)
    {
        d ad[] = values();
        int i1 = ad.length;
        for (int j1 = 0; j1 < i1; j1++)
        {
            d d1 = ad[j1];
            if (d1.toString().equalsIgnoreCase(s))
            {
                return d1;
            }
        }

        return null;
    }

    public static d valueOf(String s)
    {
        return (d)Enum.valueOf(com/etermax/preguntados/c/a/d, s);
    }

    public static d[] values()
    {
        return (d[])m.clone();
    }

    public int a()
    {
        return g;
    }

    public c b()
    {
        return i;
    }

    public int c()
    {
        return j;
    }

    public int d()
    {
        return l;
    }

    public int e()
    {
        return k;
    }

    public int f()
    {
        return h;
    }

    public int g()
    {
        return 0;
    }

    static 
    {
        a = new d("ENTERTAINMENT", 0, h.character_entertainment, com.etermax.preguntados.b.d.d, h.character_ent_select, h.crown_entertainment, h.crown_entertainment_disability, h.re_spin_ent);
        b = new d("ARTS", 1, h.character_arts, com.etermax.preguntados.b.d.b, h.character_art_select, h.crown_arts, h.crown_arts_disability, h.re_spin_art);
        c = new d("SPORTS", 2, h.character_sports, com.etermax.preguntados.b.d.c, h.character_spo_select, h.crown_sports, h.crown_sports_disability, h.re_spin_spo);
        d = new d("HISTORY", 3, h.character_history, com.etermax.preguntados.b.d.e, h.character_his_select, h.crown_history, h.crown_history_disability, h.re_spin_his);
        e = new d("SCIENCE", 4, h.character_science, com.etermax.preguntados.b.d.a, h.character_sci_select, h.crown_science, h.crown_science_disability, h.re_spin_sci);
        f = new d("GEOGRAPHY", 5, h.character_geography, com.etermax.preguntados.b.d.f, h.character_geo_select, h.crown_geography, h.crown_geography_disability, h.re_spin_geo);
        d ad[] = new d[6];
        ad[0] = a;
        ad[1] = b;
        ad[2] = c;
        ad[3] = d;
        ad[4] = e;
        ad[5] = f;
        m = ad;
    }
}
