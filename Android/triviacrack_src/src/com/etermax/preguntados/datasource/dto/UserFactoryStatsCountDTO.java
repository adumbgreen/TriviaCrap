// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.datasource.dto;

import java.io.Serializable;

public class UserFactoryStatsCountDTO
    implements Serializable
{

    private int approved;
    private int in_rate;
    private int rejected;
    private int total;

    public UserFactoryStatsCountDTO()
    {
    }

    public int getApproved()
    {
        return approved;
    }

    public int getInRate()
    {
        return in_rate;
    }

    public int getRejected()
    {
        return rejected;
    }

    public int getTotal()
    {
        return total;
    }
}
