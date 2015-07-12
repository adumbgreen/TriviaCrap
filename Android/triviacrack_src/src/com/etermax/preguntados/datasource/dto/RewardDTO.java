// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.datasource.dto;

import java.io.Serializable;

public class RewardDTO
    implements Serializable
{

    private int quantity;
    private com.etermax.gamescommon.datasource.dto.AchievementDTO.RewardType type;

    public RewardDTO()
    {
    }

    public int getQuantity()
    {
        return quantity;
    }

    public com.etermax.gamescommon.datasource.dto.AchievementDTO.RewardType getType()
    {
        return type;
    }
}
