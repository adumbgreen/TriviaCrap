// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.datasource.dto;

import com.etermax.gamescommon.language.Language;
import com.etermax.preguntados.datasource.dto.enums.QuestionDisapprovalReason;
import java.io.Serializable;

public class ReportedQuestionDTO
    implements Serializable
{

    private String comment;
    private QuestionDisapprovalReason error_type;
    private int id;
    private Language language;

    public ReportedQuestionDTO()
    {
    }

    public void setComment(String s)
    {
        comment = s;
    }

    public void setErrorType(QuestionDisapprovalReason questiondisapprovalreason)
    {
        error_type = questiondisapprovalreason;
    }

    public void setId(int i)
    {
        id = i;
    }

    public void setLanguage(Language language1)
    {
        language = language1;
    }
}
