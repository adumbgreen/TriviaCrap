// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.datasource.dto;

import com.etermax.gamescommon.language.Language;
import java.io.Serializable;
import java.util.List;

public class UserTranslationDTO
    implements Serializable
{

    private List answers;
    private long id;
    private Language language;
    private String text;

    public UserTranslationDTO()
    {
    }

    public List getAnswers()
    {
        return answers;
    }

    public String getText()
    {
        return text;
    }

    public void setAnswers(List list)
    {
        answers = list;
    }

    public void setId(long l)
    {
        id = l;
    }

    public void setLanguage(Language language1)
    {
        language = language1;
    }

    public void setText(String s)
    {
        text = s;
    }
}
