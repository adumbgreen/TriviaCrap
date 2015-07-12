// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.datasource.dto;

import java.io.Serializable;

// Referenced classes of package com.etermax.preguntados.datasource.dto:
//            UserFactoryStatsCountDTO

public class UserFactoryStatsListDTO
    implements Serializable
{

    private UserFactoryStatsCountDTO rated;
    private UserFactoryStatsCountDTO suggested;
    private UserFactoryStatsCountDTO translated;

    public UserFactoryStatsListDTO()
    {
    }

    public UserFactoryStatsCountDTO getRated()
    {
        return rated;
    }

    public UserFactoryStatsCountDTO getSuggested()
    {
        return suggested;
    }

    public UserFactoryStatsCountDTO getTranslated()
    {
        return translated;
    }
}
