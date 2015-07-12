// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.datasource.dto;

import java.io.Serializable;
import java.util.List;

public class GameUserDTO
    implements Serializable
{

    private int charges;
    private List crowns;

    public int getCharges()
    {
        return charges;
    }

    public List getCrowns()
    {
        return crowns;
    }
}
