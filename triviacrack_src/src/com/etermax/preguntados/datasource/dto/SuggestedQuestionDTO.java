// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.datasource.dto;

import com.etermax.gamescommon.language.Language;
import com.etermax.preguntados.datasource.dto.enums.Country;
import com.etermax.preguntados.datasource.dto.enums.QuestionCategory;
import java.io.Serializable;
import java.util.List;

public class SuggestedQuestionDTO
    implements Serializable
{

    private List answers;
    private QuestionCategory category;
    private int correct_answer;
    private Country country;
    private Language language;
    private String question;

    public SuggestedQuestionDTO()
    {
    }

    public void setAnswers(List list)
    {
        answers = list;
    }

    public void setCategory(QuestionCategory questioncategory)
    {
        category = questioncategory;
    }

    public void setCorrectAnswer(int i)
    {
        correct_answer = i;
    }

    public void setCountry(Country country1)
    {
        country = country1;
    }

    public void setLanguage(Language language1)
    {
        language = language1;
    }

    public void setQuestion(String s)
    {
        question = s;
    }
}
