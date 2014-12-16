// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.datasource.dto;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;

// Referenced classes of package com.etermax.preguntados.datasource.dto:
//            QuestionsFactoryLimitsDTO

public class UserSuggestionConfigDTO
    implements Serializable
{

    private ArrayList categories;
    private QuestionsFactoryLimitsDTO config;
    private HashMap languages;

    public UserSuggestionConfigDTO()
    {
    }

    public ArrayList getCategories()
    {
        return categories;
    }

    public QuestionsFactoryLimitsDTO getConfig()
    {
        return config;
    }

    public HashMap getLanguages()
    {
        return languages;
    }
}
