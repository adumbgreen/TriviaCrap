// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.gifting.dto;

import java.io.Serializable;

public class GiftsDTO
    implements Serializable
{

    private Gift asks[];
    private Gift gifts[];

    public GiftsDTO()
    {
    }

    public Gift[] getAsks()
    {
        return asks;
    }

    public Gift[] getGifts()
    {
        return gifts;
    }
}
