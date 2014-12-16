// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.datasource.dto;

import com.etermax.gamescommon.language.Language;
import com.etermax.preguntados.datasource.dto.enums.Vote;
import java.io.Serializable;

public class QuestionRatingDTO
    implements Serializable
{

    private long id;
    private Language language;
    private Vote vote;

    public QuestionRatingDTO()
    {
    }

    public void setLanguage(Language language1)
    {
        language = language1;
    }

    public void setQuestionId(long l)
    {
        id = l;
    }

    public void setVote(Vote vote1)
    {
        vote = vote1;
    }
}
