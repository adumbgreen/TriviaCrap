// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.datasource.dto;

import com.etermax.gamescommon.language.Language;
import com.etermax.preguntados.datasource.dto.enums.QuestionCategory;
import com.etermax.preguntados.datasource.dto.enums.QuestionDisapprovalReason;
import com.etermax.preguntados.datasource.dto.enums.QuestionType;
import com.etermax.preguntados.sharing.p;
import com.etermax.preguntados.ui.questionsfactory.statistics.enums.TranslationOrigin;
import java.io.Serializable;
import java.util.Date;
import java.util.List;

public class UserFactoryTranslationStatDTO
    implements p, Serializable
{

    private List answers;
    private QuestionCategory category;
    private int correct_answer;
    private List countries;
    private QuestionDisapprovalReason disapproval_reason;
    private long dislikes;
    private Language language;
    private long likes;
    private Date modification_date;
    private TranslationOrigin origin;
    private int question_id;
    private String text;
    private long translation_id;
    private QuestionType type;

    public UserFactoryTranslationStatDTO()
    {
    }

    public List getAnswers()
    {
        return answers;
    }

    public QuestionCategory getCategory()
    {
        return category;
    }

    public int getCorrectAnswer()
    {
        return correct_answer;
    }

    public List getCountries()
    {
        return countries;
    }

    public QuestionDisapprovalReason getDisapprovalReason()
    {
        return disapproval_reason;
    }

    public long getDislikes()
    {
        return dislikes;
    }

    public int getId()
    {
        return question_id;
    }

    public Language getLanguage()
    {
        return language;
    }

    public long getLikes()
    {
        return likes;
    }

    public Date getModificationDate()
    {
        return modification_date;
    }

    public TranslationOrigin getOrigin()
    {
        return origin;
    }

    public QuestionType getQuestionType()
    {
        return type;
    }

    public String getText()
    {
        return text;
    }

    public long getTranslation_id()
    {
        return translation_id;
    }
}
