// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.datasource.dto;

import com.etermax.gamescommon.login.datasource.dto.UserDTO;
import com.etermax.preguntados.datasource.dto.enums.QuestionCategory;
import com.etermax.preguntados.datasource.dto.enums.QuestionType;
import com.etermax.preguntados.sharing.p;
import java.io.Serializable;
import java.util.List;

public class QuestionDTO
    implements p, Serializable
{

    private List answers;
    private UserDTO author;
    private String base_url;
    private QuestionCategory category;
    private int correct_answer;
    private int id;
    private QuestionType media_type;
    private int player_answer;
    private String text;
    private UserDTO translator;

    public QuestionDTO()
    {
    }

    public List getAnswers()
    {
        return answers;
    }

    public UserDTO getAuthor()
    {
        return author;
    }

    public String getBaseURL()
    {
        return base_url;
    }

    public QuestionCategory getCategory()
    {
        return category;
    }

    public int getCorrectAnswer()
    {
        return correct_answer;
    }

    public int getId()
    {
        return id;
    }

    public int getOpponentAnswer()
    {
        return player_answer;
    }

    public QuestionType getQuestionType()
    {
        return media_type;
    }

    public String getText()
    {
        return text;
    }

    public UserDTO getTranslator()
    {
        return translator;
    }

    public void setMediaType(QuestionType questiontype)
    {
        media_type = questiontype;
    }
}
