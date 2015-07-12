// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.profile;

import com.etermax.h;
import com.etermax.o;

public final class l extends Enum
{

    public static final l a;
    public static final l b;
    public static final l c;
    private static final l f[];
    int d;
    int e;

    private l(String s, int i, int j, int k)
    {
        super(s, i);
        d = j;
        e = k;
    }

    public static l valueOf(String s)
    {
        return (l)Enum.valueOf(com/etermax/preguntados/ui/profile/l, s);
    }

    public static l[] values()
    {
        return (l[])f.clone();
    }

    public int a()
    {
        return d;
    }

    public int b()
    {
        return e;
    }

    static 
    {
        a = new l("FIRST", 0, o.ranking_first_place, h.trofeo_puesto_01);
        b = new l("SECOND", 1, o.ranking_second_place, h.trofeo_puesto_02);
        c = new l("THIRD", 2, o.ranking_third_place, h.trofeo_puesto_03);
        l al[] = new l[3];
        al[0] = a;
        al[1] = b;
        al[2] = c;
        f = al;
    }
}
