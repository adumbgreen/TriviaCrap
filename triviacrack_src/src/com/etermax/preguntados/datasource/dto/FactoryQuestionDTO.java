// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.datasource.dto;

import com.etermax.preguntados.datasource.dto.enums.QuestionCategory;
import java.io.Serializable;
import java.util.List;

public class FactoryQuestionDTO
    implements Serializable
{

    private QuestionCategory category;
    private List countries;
    private long id;
    private List translations;

    public FactoryQuestionDTO()
    {
    }

    public void setCategory(QuestionCategory questioncategory)
    {
        category = questioncategory;
    }

    public void setCountries(List list)
    {
        countries = list;
    }

    public void setId(long l)
    {
        id = l;
    }

    public void setTranslations(List list)
    {
        translations = list;
    }
}
