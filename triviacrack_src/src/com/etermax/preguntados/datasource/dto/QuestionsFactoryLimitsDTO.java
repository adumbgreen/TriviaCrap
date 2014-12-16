// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.datasource.dto;

import java.io.Serializable;

public class QuestionsFactoryLimitsDTO
    implements Serializable
{

    private int answers_max_size;
    private int answers_min_size;
    private int question_max_size;
    private int question_min_size;

    public int getAnswersMaxSize()
    {
        return answers_max_size;
    }

    public int getAnswersMinSize()
    {
        return answers_min_size;
    }

    public int getQuestionMaxSize()
    {
        return question_max_size;
    }

    public int getQuestionMinSize()
    {
        return question_min_size;
    }
}
