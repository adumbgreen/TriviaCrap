// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.datasource.dto;

import java.io.Serializable;

public class PodiumDTO
    implements Serializable
{

    private int first_place;
    private int second_place;
    private int third_place;

    public int getFirstPlace()
    {
        return first_place;
    }

    public int getSecondPlace()
    {
        return second_place;
    }

    public int getThirdPlace()
    {
        return third_place;
    }
}
