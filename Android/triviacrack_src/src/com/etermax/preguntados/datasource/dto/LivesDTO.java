// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.datasource.dto;

import java.io.Serializable;

public class LivesDTO
    implements Serializable
{

    private int max;
    private int next_increment;
    private int quantity;
    private boolean unlimited;

    public LivesDTO()
    {
    }

    public int getMax()
    {
        return max;
    }

    public int getNextIncrement()
    {
        return next_increment;
    }

    public int getQuantity()
    {
        return quantity;
    }

    public boolean isUnlimited()
    {
        return unlimited;
    }

    public void setNextIncrement(int i)
    {
        next_increment = i;
    }

    public void setQuantity(int i)
    {
        quantity = i;
    }
}
