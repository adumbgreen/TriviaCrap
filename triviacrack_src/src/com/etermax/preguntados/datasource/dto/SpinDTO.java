// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.datasource.dto;

import com.etermax.preguntados.datasource.dto.enums.SpinType;
import java.io.Serializable;
import java.util.List;

// Referenced classes of package com.etermax.preguntados.datasource.dto:
//            QuestionDTO

public class SpinDTO
    implements Serializable
{

    private int performance;
    private List questions;
    private QuestionDTO tie_break_question;
    private SpinType type;
    private boolean worst;

    public SpinDTO()
    {
    }

    public int getPerformance()
    {
        return performance;
    }

    public List getQuestions()
    {
        return questions;
    }

    public QuestionDTO getTieBreakQuestion()
    {
        return tie_break_question;
    }

    public SpinType getType()
    {
        return type;
    }

    public boolean isWorst()
    {
        return worst;
    }
}
