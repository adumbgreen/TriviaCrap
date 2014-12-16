// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.c.a;

import com.etermax.preguntados.datasource.dto.enums.QuestionCategory;
import com.etermax.preguntados.datasource.dto.enums.QuestionCategoryMapper;

// Referenced classes of package com.etermax.preguntados.c.a:
//            e, d, g, f

public class a
    implements e
{

    public a()
    {
    }

    public g a(QuestionCategory questioncategory)
    {
        return QuestionCategoryMapper.getByCategory(questioncategory);
    }

    public g a(String s)
    {
        return QuestionCategoryMapper.getByString(s);
    }

    public QuestionCategory a(int i)
    {
        return QuestionCategoryMapper.getCategoryAtIndex(i);
    }

    public g[] a()
    {
        return QuestionCategoryMapper.values();
    }

    public int b(QuestionCategory questioncategory)
    {
        return QuestionCategoryMapper.getIconByCategory(questioncategory);
    }

    public int c(QuestionCategory questioncategory)
    {
        return QuestionCategoryMapper.getOrdinalByCategory(questioncategory);
    }

    public f d(QuestionCategory questioncategory)
    {
        return com.etermax.preguntados.c.a.d.a(questioncategory.name());
    }
}
