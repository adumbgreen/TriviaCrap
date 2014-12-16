// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory.ratequestion.report;

import com.etermax.preguntados.datasource.dto.enums.QuestionDisapprovalReason;

public class j
{

    private QuestionDisapprovalReason a;
    private int b;
    private int c;

    public j(QuestionDisapprovalReason questiondisapprovalreason, int i, int k)
    {
        a = questiondisapprovalreason;
        b = i;
        c = k;
    }

    public QuestionDisapprovalReason a()
    {
        return a;
    }

    public int b()
    {
        return b;
    }

    public int c()
    {
        return c;
    }
}
