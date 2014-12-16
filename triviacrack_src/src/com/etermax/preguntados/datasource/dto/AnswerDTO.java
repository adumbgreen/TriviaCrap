// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.datasource.dto;

import com.etermax.preguntados.datasource.dto.enums.QuestionCategory;
import com.etermax.preguntados.datasource.dto.enums.Vote;
import java.io.Serializable;
import java.util.List;

public class AnswerDTO
    implements Serializable
{

    private int answer;
    private QuestionCategory category;
    private long id;
    private List power_ups;
    private Vote vote;

    public AnswerDTO()
    {
    }

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (obj == null)
            {
                return false;
            }
            if (getClass() != obj.getClass())
            {
                return false;
            }
            AnswerDTO answerdto = (AnswerDTO)obj;
            if (category != answerdto.category)
            {
                return false;
            }
            if (id != answerdto.id)
            {
                return false;
            }
        }
        return true;
    }

    public long getId()
    {
        return id;
    }

    public List getPowerUps()
    {
        return power_ups;
    }

    public int hashCode()
    {
        int i;
        if (category == null)
        {
            i = 0;
        } else
        {
            i = category.hashCode();
        }
        return 31 * (i + 31) + (int)(id ^ id >>> 32);
    }

    public void setAnswer(int i)
    {
        answer = i;
    }

    public void setCategory(QuestionCategory questioncategory)
    {
        category = questioncategory;
    }

    public void setId(long l)
    {
        id = l;
    }

    public void setPowerUps(List list)
    {
        power_ups = list;
    }

    public void setVote(Vote vote1)
    {
        vote = vote1;
    }
}
