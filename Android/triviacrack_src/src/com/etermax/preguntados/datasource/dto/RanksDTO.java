// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.datasource.dto;

import java.io.Serializable;
import java.util.List;

public class RanksDTO
    implements Serializable
{

    private long time_remaining;
    private List user_ranks;

    public RanksDTO()
    {
    }

    public long getRemainingTime()
    {
        return time_remaining;
    }

    public List getUserRanks()
    {
        return user_ranks;
    }
}
