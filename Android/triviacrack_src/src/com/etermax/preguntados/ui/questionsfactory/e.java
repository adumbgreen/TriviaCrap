// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.etermax.gamescommon.language.Language;
import com.etermax.gamescommon.language.LanguageResourceMapper;
import com.etermax.preguntados.datasource.dto.enums.Country;
import com.etermax.preguntados.h.a;
import java.util.Locale;

public class e
{

    private static e a;
    private SharedPreferences b;

    private e(Context context)
    {
        b = context.getSharedPreferences("preguntados_pref", 0);
    }

    private Language a(String s)
    {
        String s1 = b.getString(s, null);
        if (!TextUtils.isEmpty(s1))
        {
            return LanguageResourceMapper.getByString(s1).getCode();
        } else
        {
            return LanguageResourceMapper.getByString(Locale.getDefault().getLanguage()).getCode();
        }
    }

    public static e a(Context context)
    {
        if (a == null)
        {
            a = new e(context);
        }
        return a;
    }

    public static String a(String s, Language language, boolean flag)
    {
        if (s != null && s.length() > 0)
        {
            String s1 = "";
            Language language1 = Language.ES;
            int i = 0;
            if (language == language1)
            {
                char c2 = s.charAt(0);
                i = 0;
                if (c2 == '\277')
                {
                    i = 1;
                }
            }
            char c1 = Character.toUpperCase(s.charAt(i));
            if (language == Language.ES && flag)
            {
                s1 = (new StringBuilder()).append(s1).append("\277").toString();
            }
            s = (new StringBuilder()).append(s1).append(c1).append(s.substring(i + 1, s.length())).toString();
        }
        return s;
    }

    private Country b(String s)
    {
        return com.etermax.preguntados.h.a.a(b.getString(s, null)).a();
    }

    public Language a()
    {
        return a("suggest_question_language");
    }

    public void a(Language language)
    {
        b.edit().putString("suggest_question_language", language.name()).commit();
    }

    public void a(Country country)
    {
        b.edit().putString("rate_question_country", country.name()).commit();
    }

    public Language b()
    {
        return a("rate_question_language");
    }

    public void b(Language language)
    {
        b.edit().putString("rate_question_language", language.name()).commit();
    }

    public Country c()
    {
        if (b.getBoolean("rate_question_first_time", true))
        {
            b.edit().putBoolean("rate_question_first_time", false).commit();
            return null;
        } else
        {
            return b("rate_question_country");
        }
    }

    public void c(Language language)
    {
        b.edit().putString("translate_language_from", language.name()).commit();
    }

    public Language d()
    {
        return a("translate_language_from");
    }

    public void d(Language language)
    {
        b.edit().putString("translate_language_to", language.name()).commit();
    }

    public Language e()
    {
        return a("translate_language_to");
    }
}
