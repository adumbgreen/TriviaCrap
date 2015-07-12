// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.datasource.dto;

import java.io.Serializable;

// Referenced classes of package com.etermax.preguntados.datasource.dto:
//            QuestionDTO

public class SpinQuestionDTO
    implements Serializable
{

    private QuestionDTO backup_question;
    private QuestionDTO powerup_question;
    private QuestionDTO question;

    public SpinQuestionDTO()
    {
    }

    public QuestionDTO getBackupQuestion()
    {
        return backup_question;
    }

    public QuestionDTO getPowerup_question()
    {
        return powerup_question;
    }

    public QuestionDTO getQuestion()
    {
        return question;
    }
}
