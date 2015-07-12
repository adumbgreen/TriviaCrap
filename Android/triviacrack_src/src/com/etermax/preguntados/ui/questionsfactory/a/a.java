// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory.a;

import com.etermax.gamescommon.language.Language;
import com.etermax.h;

public final class a extends Enum
{

    public static final a a;
    public static final a b;
    public static final a c;
    public static final a d;
    public static final a e;
    public static final a f;
    public static final a g;
    public static final a h;
    public static final a i;
    public static final a j;
    public static final a k;
    private static final a n[];
    private final Language l;
    private final int m;

    private a(String s, int i1, Language language, int j1)
    {
        super(s, i1);
        l = language;
        m = j1;
    }

    public static a a(String s)
    {
        Language language = Language.get(s, true);
        a aa[] = values();
        int i1 = aa.length;
        for (int j1 = 0; j1 < i1; j1++)
        {
            a a1 = aa[j1];
            if (a1.l == language)
            {
                return a1;
            }
        }

        return b();
    }

    private static a b()
    {
        return b;
    }

    public static a valueOf(String s)
    {
        return (a)Enum.valueOf(com/etermax/preguntados/ui/questionsfactory/a/a, s);
    }

    public static a[] values()
    {
        return (a[])n.clone();
    }

    public int a()
    {
        return m;
    }

    static 
    {
        a = new a("ES", 0, Language.ES, h.country_es);
        b = new a("EN", 1, Language.EN, h.country_us);
        c = new a("FR", 2, Language.FR, h.country_fr);
        d = new a("DE", 3, Language.DE, h.country_de);
        e = new a("IT", 4, Language.IT, h.country_it);
        f = new a("CA", 5, Language.CA, h.language_flag_catalan);
        g = new a("PT", 6, Language.PT, h.country_pt);
        h = new a("RU", 7, Language.RU, h.country_ru);
        i = new a("NL", 8, Language.NL, h.country_nl);
        j = new a("JA", 9, Language.JA, h.country_jp);
        k = new a("AR", 10, Language.AR, h.country_sa);
        a aa[] = new a[11];
        aa[0] = a;
        aa[1] = b;
        aa[2] = c;
        aa[3] = d;
        aa[4] = e;
        aa[5] = f;
        aa[6] = g;
        aa[7] = h;
        aa[8] = i;
        aa[9] = j;
        aa[10] = k;
        n = aa;
    }
}
