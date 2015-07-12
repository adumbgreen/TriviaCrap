// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.datasource.dto;

import com.etermax.preguntados.datasource.dto.enums.PowerUp;
import java.io.Serializable;

public class PowerUpDTO
    implements Serializable
{

    private int cost;
    private PowerUp name;

    public PowerUpDTO()
    {
    }

    public int getCost()
    {
        return cost;
    }

    public PowerUp getName()
    {
        return name;
    }
}
