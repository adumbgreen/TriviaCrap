// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.datasource.dto;

import com.etermax.preguntados.datasource.dto.enums.QuestionCategory;
import java.io.Serializable;

public class CategoryQuestionDTO
    implements Serializable
{

    private QuestionCategory category;
    private int correct;
    private int incorrect;

    public CategoryQuestionDTO()
    {
    }

    public QuestionCategory getCategory()
    {
        return category;
    }

    public int getCorrect()
    {
        return correct;
    }

    public int getIncorrect()
    {
        return incorrect;
    }
}
