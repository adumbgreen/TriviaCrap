// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.datasource.dto;

import java.io.Serializable;
import java.util.List;

public class PlayerStatisticsDTO
    implements Serializable
{

    List category_questions;
    int challenges_won;
    int correct_answers;
    int crowns_won;
    int incorrect_answers;
    int questions_answered;

    public List getCategoryQuestions()
    {
        return category_questions;
    }

    public int getChallengesWon()
    {
        return challenges_won;
    }

    public int getCorrectAnswers()
    {
        return correct_answers;
    }

    public int getCrownsWon()
    {
        return crowns_won;
    }

    public int getIncorrectAnswers()
    {
        return incorrect_answers;
    }

    public int getQuestionsAnswered()
    {
        return questions_answered;
    }
}
