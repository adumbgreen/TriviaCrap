// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.datasource.dto;

import com.etermax.gamescommon.language.Language;
import java.io.Serializable;
import java.util.List;

public class TranslateQuestionConfigDTO
    implements Serializable
{

    private Language recommended;
    private List source_languages;
    private List target_languages;

    public TranslateQuestionConfigDTO()
    {
    }

    public Language getRecommendedLanguage()
    {
        return recommended;
    }

    public List getSourceLanguages()
    {
        return source_languages;
    }

    public List getTargetLanguages()
    {
        return target_languages;
    }
}
