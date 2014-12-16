// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.c;

import android.content.Context;
import android.content.res.Resources;
import com.etermax.f;
import com.etermax.gamescommon.promotion.Promotion;
import com.etermax.h;
import com.etermax.o;

public final class e extends Enum
{

    public static final e a;
    public static final e b;
    public static final e c;
    private static final e p[];
    private Promotion d;
    private int e;
    private int f;
    private int g;
    private int h;
    private int i;
    private int j;
    private int k;
    private int l;
    private int m;
    private int n;
    private int o;

    private e(String s, int i1, Promotion promotion, int j1, int k1, int l1, int i2, 
            int j2, int k2, int l2, int i3, int j3, int k3, int l3)
    {
        super(s, i1);
        d = promotion;
        e = j1;
        f = k1;
        g = l1;
        h = i2;
        i = j2;
        j = k2;
        k = l2;
        l = i3;
        m = j3;
        n = k3;
        o = l3;
    }

    public static e a(Promotion promotion)
    {
        e ae[] = values();
        int i1 = ae.length;
        for (int j1 = 0; j1 < i1; j1++)
        {
            e e1 = ae[j1];
            if (e1.a().name().compareTo(promotion.name()) == 0)
            {
                return e1;
            }
        }

        return l();
    }

    private static e l()
    {
        return a;
    }

    public static e valueOf(String s)
    {
        return (e)Enum.valueOf(com/etermax/preguntados/ui/c/e, s);
    }

    public static e[] values()
    {
        return (e[])p.clone();
    }

    public int a(Context context)
    {
        return context.getResources().getColor(e);
    }

    public Promotion a()
    {
        return d;
    }

    public int b()
    {
        return f;
    }

    public int c()
    {
        return g;
    }

    public int d()
    {
        return h;
    }

    public int e()
    {
        return i;
    }

    public int f()
    {
        return j;
    }

    public int g()
    {
        return k;
    }

    public int h()
    {
        return l;
    }

    public int i()
    {
        return m;
    }

    public int j()
    {
        return n;
    }

    public int k()
    {
        return o;
    }

    static 
    {
        a = new e("LIVES_EXTENDER_1", 0, Promotion.LIVES_EXTENDER_1, f.redLight, h.live_infinite_dashboard, o.super_promo, o.extend_limit_lives, o.extend_lives, h.live_infinite_pop_up, o.endless_lives, o.endless_lives_txt, h.live_pop_up, o.extend_5_lives, o.extend_5_lives_txt);
        b = new e("PROMO_COINS", 1, Promotion.PROMO_COINS, f.pink, h.coins_promo_dashboard, o.super_promo, o.get_coins_deal, o.get_more_coins, h.coins_promo_dashboard, o.promo1_coins, o.promo1_coins_txt, h.coins_pop_up, o.promo2_coins, o.promo2_coins_txt);
        c = new e("PROMO_SPINS", 2, Promotion.PROMO_SPINS, f.violetLight, h.spin_promo_dashboard, o.super_promo, o.get_spins_deal, o.get_more_spins, h.spin_promo_dashboard, o.promo1_spins, o.promo1_spins_txt, h.spin_pop_up, o.promo2_spins, o.promo2_spins_txt);
        e ae[] = new e[3];
        ae[0] = a;
        ae[1] = b;
        ae[2] = c;
        p = ae;
    }
}
