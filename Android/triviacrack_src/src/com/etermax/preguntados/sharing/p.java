// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.sharing;

import com.etermax.preguntados.datasource.dto.enums.QuestionCategory;
import com.etermax.preguntados.datasource.dto.enums.QuestionType;
import java.util.List;

public interface p
{

    public abstract List getAnswers();

    public abstract QuestionCategory getCategory();

    public abstract int getId();

    public abstract QuestionType getQuestionType();

    public abstract String getText();
}
