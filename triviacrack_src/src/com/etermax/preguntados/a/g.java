// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.a;

import com.etermax.gamescommon.b.l;
import com.etermax.preguntados.datasource.dto.enums.QuestionCategory;

public class g extends l
{

    public g()
    {
        e("power_ups_used");
    }

    public void a(String s, String s1, QuestionCategory questioncategory, String s2)
    {
        a("type", s);
        a("mode", s1);
        a("category", questioncategory.name());
        a("use_type", s2);
    }
}
