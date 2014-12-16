// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.view;

import android.content.Context;
import com.etermax.gamescommon.language.Language;
import com.etermax.gamescommon.language.LanguageResourceMapper;
import com.etermax.gamescommon.login.datasource.b;
import com.etermax.h;
import com.etermax.tools.nationality.Nationality;

public class a
{

    public String a;
    public int b;
    public int c;
    public int d;
    public int e;
    public int f;
    public Language g;

    public a(int i, int j)
    {
        d = i;
        c = j;
    }

    public a(int i, int j, int k)
    {
        d = i;
        c = j;
        f = k;
    }

    private int b(Context context, LanguageResourceMapper languageresourcemapper)
    {
        b b1 = com.etermax.gamescommon.login.datasource.b.a(context);
        if (b1.n() != null)
        {
            String s = languageresourcemapper.getCode().toString();
            String s1 = b1.n().toString();
            if (s.compareTo(Language.PT.name()) == 0)
            {
                if (s1.compareTo(Nationality.PT.name()) == 0)
                {
                    return h.country_pt;
                } else
                {
                    return h.country_br;
                }
            }
            if (s.compareTo(Language.EN.name()) == 0)
            {
                if (s1.compareTo(Nationality.US.name()) == 0)
                {
                    return h.country_us;
                } else
                {
                    return h.country_gb;
                }
            }
        }
        return languageresourcemapper.getFlagResource();
    }

    public void a(Context context, LanguageResourceMapper languageresourcemapper)
    {
        a = languageresourcemapper.getCode().name();
        g = languageresourcemapper.getCode();
        b = b(context, languageresourcemapper);
        e = languageresourcemapper.getNameResource();
    }

    public boolean equals(Object obj)
    {
        return a.equals(((a)obj).a);
    }
}
