// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.datasource.dto;

import java.io.Serializable;
import java.util.List;

public class UserQuestionStatsDTO
    implements Serializable
{

    private List questions;
    private int total;

    public UserQuestionStatsDTO()
    {
    }

    public List getQuestions()
    {
        return questions;
    }

    public int getTotal()
    {
        return total;
    }
}
