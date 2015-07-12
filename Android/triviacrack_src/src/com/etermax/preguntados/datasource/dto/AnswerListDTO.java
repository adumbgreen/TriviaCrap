// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.datasource.dto;

import com.etermax.preguntados.datasource.dto.enums.QuestionCategory;
import com.etermax.preguntados.datasource.dto.enums.SpinType;
import java.util.List;

public class AnswerListDTO
{

    private List answers;
    private Long finish_time;
    private QuestionCategory offered_crown;
    private QuestionCategory requested_crown;
    private SpinType type;

    public AnswerListDTO()
    {
    }

    public List getAnswers()
    {
        return answers;
    }

    public void setAnswers(List list)
    {
        answers = list;
    }

    public void setFinishTime(Long long1)
    {
        finish_time = long1;
    }

    public void setOfferedCrown(QuestionCategory questioncategory)
    {
        offered_crown = questioncategory;
    }

    public void setRequestedCrown(QuestionCategory questioncategory)
    {
        requested_crown = questioncategory;
    }

    public void setType(SpinType spintype)
    {
        type = spintype;
    }
}
