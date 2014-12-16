// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.datasource.dto;

import java.io.Serializable;

public class LivesConfigDTO
    implements Serializable
{

    private int increment_interval;
    private int increment_quantity;

    public int getIncrement_interval()
    {
        return increment_interval;
    }

    public int getIncrement_quantity()
    {
        return increment_quantity;
    }
}
