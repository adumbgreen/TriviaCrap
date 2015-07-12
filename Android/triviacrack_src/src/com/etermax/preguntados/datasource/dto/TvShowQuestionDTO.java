// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.datasource.dto;

import com.etermax.preguntados.datasource.dto.enums.QuestionCategory;
import java.io.Serializable;
import java.util.List;

public class TvShowQuestionDTO
    implements Serializable
{

    private List answers;
    private QuestionCategory category;
    private long id;
    private int remaining_seconds;
    private String text;
    private int total_seconds;

    public TvShowQuestionDTO()
    {
    }

    public List getAnswers()
    {
        return answers;
    }

    public QuestionCategory getCategory()
    {
        return category;
    }

    public long getId()
    {
        return id;
    }

    public int getRemainingSeconds()
    {
        return remaining_seconds;
    }

    public String getText()
    {
        return text;
    }

    public int getTotalSeconds()
    {
        return total_seconds;
    }
}
